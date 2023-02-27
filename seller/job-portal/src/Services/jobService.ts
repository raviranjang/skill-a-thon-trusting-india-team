import axios from "axios"
import JobSchema from "../utils/JobSchema"
import LocalStorage from "../utils/LocalStorage"

const jobService = {
  postJob(data: typeof JobSchema) {
    const { accessToken } = JSON.parse(LocalStorage.getItem('user'))
    return axios.post(`${process.env.REACT_APP_JOB_PORTAL_BASE_URL}/jobs`, data, {
      headers: {
        Authorization: accessToken
      }
    }).then(res => res.data)
  },
  getJobs() {
    const { accessToken } = JSON.parse(LocalStorage.getItem('user'))
    return axios.get(`${process.env.REACT_APP_JOB_PORTAL_BASE_URL}/jobs`, {
      headers: {
        Authorization: accessToken
      }
    }).then(res => res.data)
  },

  getJob(id: string) {
    const { accessToken } = JSON.parse(LocalStorage.getItem('user'))
    return axios.get(`${process.env.REACT_APP_JOB_PORTAL_BASE_URL}/jobs/${id}`, {
      headers: {
        Authorization: accessToken
      }
    }).then(res => res.data)
  },

  getApplications(jobId: string) {
    const { accessToken } = JSON.parse(LocalStorage.getItem('user'))
    return axios.get(`${process.env.REACT_APP_JOB_PORTAL_BASE_URL}/jobs/${jobId}/applicants`, {
      headers: {
        Authorization: accessToken
      }
    }).then(res => res.data)
  },

  getApplicationDetails(applicationId: string) {
    const { accessToken } = JSON.parse(LocalStorage.getItem('user'))
    return axios.get(`${process.env.REACT_APP_JOB_PORTAL_BASE_URL}/jobs/applications/${applicationId}`, {
      headers: {
        Authorization: accessToken
      }
    }).then(res => res.data)
  },

  updateApplicationStatus(data: any) {
    const { accessToken } = JSON.parse(LocalStorage.getItem('user'))
    return axios.patch(`${process.env.REACT_APP_JOB_PORTAL_BASE_URL}/jobs/applications/`, data, {
      headers: {
        Authorization: accessToken
      }
    }).then(res => res.data)
  },

  verifyVC(vcData: any) {
    const { accessToken } = JSON.parse(LocalStorage.getItem('user'))
    return axios.post(`${process.env.REACT_APP_JOB_PORTAL_BASE_URL}/jobs/verify-vc`, vcData, {
      headers: {
        Authorization: accessToken
      }
    }).then(res => res.data)
  }

}

export default jobService