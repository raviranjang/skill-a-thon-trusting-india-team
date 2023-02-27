import { useEffect, useState } from "react"
import Button from "react-bootstrap/esm/Button";
import Table from 'react-bootstrap/Table';
import { useNavigate, useParams } from "react-router"
import { useSearchParams } from 'react-router-dom';
import jobService from "../Services/jobService"

const Applications = () => {
  const navigate = useNavigate()
  const { id = '' } = useParams()
  const [searchParams] = useSearchParams();
  const fromDashboard = searchParams.get('fromDashboard')
  const [applications, setApplications] = useState<any[]>([])
  useEffect(() => {
    jobService.getApplications(id).then((d: any[]) => {
      setApplications(d)
    }).catch(error => {
      const { status } = error?.response
      if (status === 401) {
        navigate('/login', { replace: true })
        return
      }
    })
  }, [])
  return <div style={{ margin: 20 }}>
    <div className="backButton" onClick={(e) => {
      fromDashboard ? navigate(`/dashboard`) : navigate(`/job/${id}`)
    }}>
    </div>
    <h3>Applicants</h3>
    <Table striped bordered hover>
      <thead>
        <tr>
          <th>Name</th>
          <th>Gender</th>
          <th>Status</th>
          <th>View</th>
        </tr>
      </thead>
      <tbody>
        {
          (applications || []).map((application: any, i: number) => {
            return <tr key={i}>
              <td>{application["person"]?.name}</td>
              <td>{application["person"]?.gender || 'N/A'}</td>
              <td>{application.state}</td>
              <td><Button variant="primary" onClick={() => {
                navigate(`/application-details/${application.id}`)
              }}>
                View
              </Button></td>
            </tr>
          })
        }
      </tbody>
    </Table>
    <Button onClick={(e) => {
      fromDashboard ? navigate(`/dashboard`) : navigate(`/job/${id}`)
    }}>Back</Button> <span></span>
  </div>
}

export default Applications