import axios from "axios";
import { jobDespPortalApiKey, jobDespPortalUrl } from "../constants";

export default class Clients {
  static async addJob(data) {
    return axios.post(`${jobDespPortalUrl}/jobportal/addjob`, data, {
      headers: {
        'x-api-key': jobDespPortalApiKey
      }
    }).then((res) => res.data)
  }

  static async getApplicants(jobId) {
    return axios.get(`${jobDespPortalUrl}/jobportal/applications?jobid=${jobId}`, {
      headers: {
        'x-api-key': jobDespPortalApiKey
      }
    }).then((res) => res.data)
  }

  static async getApplicantDetails(applicationId) {
    return axios.get(`${jobDespPortalUrl}/jobportal/applications/${applicationId}`, {
      headers: {
        'x-api-key': jobDespPortalApiKey
      }
    }).then((res) => res.data)
  }

  static async updateApplication(data) {
    return axios.post(`${jobDespPortalUrl}/jobportal/applications`, data, {
      headers: {
        'x-api-key': jobDespPortalApiKey
      }
    }).then((res) => res.data)
  }

  static async verifyVC(data) {
    return axios.post(`${jobDespPortalUrl}/verify`, data, {
      headers: {
        'x-api-key': jobDespPortalApiKey
      }
    }).then((res) => res.data)
  }

  static async getDid(accessToken) {
    return axios.get(`${process.env.CLOUD_WALLET_SERVICE_BASE_URL}/users/get-did`,
      {
        headers: {
          'API-KEY': process.env.CLOUD_WALLET_SERVICE_API_KEY,
          Authorization: accessToken,
        }
      }
    ).then(response => response.data)
  }
}