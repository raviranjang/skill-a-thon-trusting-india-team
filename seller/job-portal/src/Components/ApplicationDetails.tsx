import { useEffect, useState } from "react"
import Modal from 'react-bootstrap/Modal';
import { useNavigate, useParams } from "react-router"
import Alert from 'react-bootstrap/Alert'
import Badge from 'react-bootstrap/Badge';
import jobService from "../Services/jobService"
import Button from "react-bootstrap/Button"
import cloudWalletService from "../Services/cloudWalletService";
import VcCard from "./CardComponent";
import { Spinner } from "react-bootstrap";

const ApplicationDetails = () => {
  const navigate = useNavigate()
  const [vcLoading, setVCLoading] = useState(true)
  const [showVc, setShowVC] = useState(false)
  const [vcDetails, setVCDetails] = useState<any>({})
  const [vcDisplayData, setVCDisplayData] = useState<any>({})
  const [application, setApplication] = useState<any>(undefined)
  const [verifiedBy, setVerifiedBy] = useState<any>('Affinidi')
  const [cardData, setCardData] = useState<any>([])
  const { id = '' } = useParams()

  const handleShow = (status: boolean) => setShowVC(status);
  const toTitleCase = (str: string) => {
    return str.replace(
      /\w\S*/g,
      (txt: string) => {
        return txt.charAt(0).toUpperCase() + txt.substr(1);
      }
    );
  }

  const updateApplicationStatus = async (state: string) => {
    try {
      await jobService.updateApplicationStatus({ ...application, state })
      setApplication({ ...application, state })
    }
    catch (error: any) {
      const { status, data: { message } } = error?.response
      if (status === 401) {
        navigate('/login', { replace: true })
        return
      }
      alert(message || 'Something went wrong')
    }
  }


  const flattenAnObject = (source: any, target: any) => {
    Object.keys(source).forEach(k => {
      if (typeof source[k] === 'object') {
        flattenAnObject(source[k], target)
      } else {
        if (typeof source[k] === 'string' && !source[k].length) {
          return
        } else {
          target[k] = source[k]
        }
      }
    })
    return target
  }

  const getVcDetails = async (url: string) => {
    try {
      const vc = await cloudWalletService.getVcDetails(url)
      const flatObject = flattenAnObject(vc.credentialSubject, {})
      const verifiedBySunbird = await jobService.verifyVC({
        signedCredentials: vc
      }).catch(e => {
        const { status } = e?.response
        if (status === 401) {
          navigate('/login', { replace: true })
          return
        }
        setVerifiedBy('Affinidi')
      })
      if (verifiedBySunbird.verified) {
        setVerifiedBy('Sunbird')
      } else {
        setVerifiedBy('Affinidi')
      }
      setVCDisplayData(flatObject)
      setVCDetails(vc)
      setShowVC(true)
    } catch (e: any) {
      const { status } = e?.response
      if (status === 401) {
        navigate('/login', { replace: true })
        return
      }
      const { response: { data: { message } } } = e
      alert(message)
    }
  }
  const onAccept = (e: any) => {
    updateApplicationStatus('Accepted')
  }

  const onReject = (e: any) => {
    e.preventDefault()
    updateApplicationStatus('Rejected')
  }

  const getVcDetailsForCard = async (urls: string[]) => {
    const promise = await Promise.all(
      urls.map(async (url) => {
        const data = await cloudWalletService.getVcDetails(url).catch(e => {
          return
        })
        if (!data)
          return
        const flatObject = flattenAnObject(data.credentialSubject, {})
        const verifiedBySunbird = await cloudWalletService.verifyVC({
          verifiableCredentials: [data]
        }).catch(() => {
          return { isValid: false }
        })
        return {
          vcDisplayData: flatObject,
          type: data.type?.length ? data.type[data.type.length - 1] : 'VC Details',
          verifiedBy: verifiedBySunbird.isValid ? 'Affinidi' : ''
        }
      })
    )
    const cardData = promise.filter(d => !!d)
    setCardData([...cardData])
    setVCLoading(false)
  }
  useEffect(() => {
    jobService.getApplicationDetails(id).then((d: any) => {
      setApplication(d)
      getVcDetailsForCard((d.person?.creds || []).map((cred: any) => cred.url))
    }).catch((error) => {
      const { status } = error?.response
      if (status === 401) {
        navigate('/login', { replace: true })
        return
      }
    })
  }, [])
  return (<div style={{ margin: 20 }}>
    <div className="backButton" onClick={(e) => {
      return navigate(`/applications/${application.jobid}`)
    }}></div>
    {application
      ?
      <>
        <h3>
          {application.person?.name} ({application.person?.gender || 'N/A'})
        </h3>
        <h2></h2>
        <h4>
          Contact Information
        </h4>
        {application.contact?.phone ? <h6>
          {application.contact.phone}
        </h6> : ""}
        {application.contact?.email ? <h6>
          {application.contact.email}
        </h6> : ""}
        {!application.contact ? <h6>
          N/A
        </h6> : ""}
        <h2></h2>
        <h4>
          Credentials
        </h4>
        <h2></h2>
        {vcLoading ? <Spinner animation="border" variant="primary" /> : <></>}
        <div className="cardDiv">
          {cardData.map((card: any, i: number) => {
            return <VcCard key={i} card={card}></VcCard>
          })}
        </div>
        <h2></h2>

        {application.state === 'Accepted' ? <Alert variant='success'>
          Application already accepted!
        </Alert> : ''}
        {application.state === 'Rejected' ? <Alert variant='danger'>
          Application already rejected!
        </Alert> : ''}
        <h2></h2>
        {application.state !== 'Accepted' && application.state !== 'Rejected' ?
          <Button key={'accepted'} variant="primary" onClick={onAccept}>
            Accept
          </Button> : <></>}
        <span> </span>
        {application.state !== 'Accepted' && application.state !== 'Rejected' ?
          <Button key={'rejected'} variant="danger" onClick={onReject}>
            Reject
          </Button> : <></>}
        <span> </span>
        <Button key={'back'} variant="secondary" onClick={(e) => {
          e.preventDefault()
          return navigate(`/applications/${application.jobid}`)
        }}>Back</Button>
      </>
      : <h3>
        Loading...
      </h3>
    }
    <Modal show={showVc} onHide={() => {
      handleShow(false)
    }}>
      <Modal.Header closeButton>
        <Modal.Title>{vcDetails.type?.length ? vcDetails.type[vcDetails.type.length - 1] : 'Vc Details'}</Modal.Title>
      </Modal.Header>
      <Modal.Body>
        {Object.keys(vcDisplayData).map((k: string, i: number) => {
          return <h6 key={i}>{toTitleCase(k)} : {vcDisplayData[k]}</h6>
        })}
        <h2></h2>
        <Badge bg="success">
          Verified By {verifiedBy}
        </Badge>
      </Modal.Body>
      <Modal.Footer>
        <Button variant="secondary" onClick={(e) => {
          handleShow(false)
        }}>
          Close
        </Button>
      </Modal.Footer>
    </Modal>
  </div >)
}

export default ApplicationDetails