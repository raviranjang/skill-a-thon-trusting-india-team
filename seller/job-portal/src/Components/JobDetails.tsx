import { useEffect, useState } from "react"
import { useNavigate, useParams } from "react-router"
import jobService from "../Services/jobService"
import moment from 'moment'
import Button from "react-bootstrap/Button"

function JobDetails() {
  const navigate = useNavigate()
  const [job, setJob] = useState<any>(undefined)
  const { id = '' } = useParams()
  useEffect(() => {
    jobService.getJob(id).then((d: any[]) => {
      setJob(d)
    }).catch(error => {
      const { status } = error?.response
      if (status === 401) {
        navigate('/login', { replace: true })
        return
      }
    })
  }, [])
  return (<div style={{ margin: 20 }}>
    {
      job ?
        <>
          <div className="backButton" onClick={(e) => {
            navigate(`/dashboard`)
          }}></div>
          <h3>
            {job.title}
          </h3>
          <h6>
            Posted On {moment(job.datePosted).format('DD-MM-YYYY')}
          </h6>
          <h6>
            {(job.employmentType || [])
              .filter((d: string) => !!d.length)
              .map((d: string) => d.split('_').join(' '))
              .join(",")}
          </h6>
          <h6>
            {
              job.jobLocation?.name
            } {
              job.jobLocation?.address?.addressRegion
            } {
              job.jobLocation?.address?.addressCountry
            } {
              job.jobLocation?.address?.postalCode
            } ({
              (job.jobLocationType || []).join(', ')
            })
          </h6>
          <span>
            {job.description}
          </span>
          <h2></h2>
          <h2></h2>
          <h4>Skills</h4>
          <ul>
            {(job.skills || []).map((s: any, i: number) => {
              return <li key={i}> {s}</li>
            })}
          </ul>
          <h2></h2>
          <h4>Responsibilities</h4>
          <ul>
            {(job.responsibilities || []).map((s: any, i: number) => {
              return <li key={i}> {s}</li>
            })}
          </ul>
          <h2></h2>
          {(job.qualifications || []).map((q: any, i: number) => {
            return <div key={i}><h4>{q?.type}</h4>
              <ul>
                {(q?.values || []).map((v: any, j: number) => {
                  return <li key={j}>
                    {v.value}
                  </li>
                })}
              </ul>
            </div>
          })}
          <Button onClick={(e) => {
            navigate(`/dashboard`)
          }}>Back</Button> <span></span>
          <Button onClick={(e) => {
            navigate(`/applications/${job.id}`)
          }}>View Applicants</Button>
        </>
        :
        <><h3>
          Loading...
        </h3></>
    }
  </div>)
}

export default JobDetails