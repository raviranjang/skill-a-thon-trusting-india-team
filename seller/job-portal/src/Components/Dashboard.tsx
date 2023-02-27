import LocalStorage from "../utils/LocalStorage"
import Table from 'react-bootstrap/Table';
import Button from "react-bootstrap/esm/Button";
import jobService from "../Services/jobService";
import { useEffect, useState } from "react";
import { useNavigate } from "react-router";

function Dashboard() {
  const navigate = useNavigate()
  const { name } = JSON.parse(LocalStorage.getItem('user'))
  const [jobs, setJobs] = useState<any[]>([])

  useEffect(() => {
    jobService.getJobs().then((d: any[]) => {
      setJobs(d)
    }).catch(error => {
      const { status } = error?.response
      if (status === 401) {
        navigate('/login', { replace: true })
        return
      }
    })
  }, [])

  const viewJobDetails = (jobId: string) => {
    navigate(`/job/${jobId}`)
  }

  return (<div style={{ margin: 20 }}>
    <div className="center">
      <div> <h2>Job Listing </h2></div>
      <div style={{
        marginLeft: "auto",
        marginRight: "0"
      }}><Button variant="primary" onClick={() => {
        navigate(`/post-job`)
      }}>Post a new job</Button></div>
    </div>
    <div style={{
      margin: 10
    }}> { } </div>
    <Table striped bordered hover>
      <thead>
        <tr>
          <th>Job Title</th>
          <th>Employment Type</th>
          <th>Location</th>
          <th>Job Type</th>
          <th>View</th>
        </tr>
      </thead>
      <tbody>
        {
          (jobs || []).map((job, i) => {
            return <tr key={i}>
              <td>
                <a style={{ margin: 5 }} key={i} className="text-normal" onClick={() => { viewJobDetails(job.id) }}>{job["title"]}</a>
              </td>
              <td>{(job["employmentType"] || []).join(', ')}</td>
              <td>{job["jobLocation"]?.address?.addressRegion || ''}</td>
              <td>{(job["jobLocationType"] || []).join(', ')}</td>
              <td><Button variant="info" onClick={(e) => {
                navigate(`/applications/${job.id}?fromDashboard=true`)
              }}>
                View Applicants
              </Button></td>
            </tr>
          })
        }
      </tbody>
    </Table>
  </div >)
}

export default Dashboard