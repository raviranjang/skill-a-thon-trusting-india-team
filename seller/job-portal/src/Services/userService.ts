import axios from "axios";
import LocalStorage from "../utils/LocalStorage";

const UserService = {
  getUser() {
    const { accessToken } = JSON.parse(LocalStorage.getItem('user'))
    return axios.get(`${process.env.REACT_APP_JOB_PORTAL_BASE_URL}/user`, {
      headers: {
        Authorization: accessToken
      }
    }).then(res => res.data)
  },
  registerUser(data: {
    username: string,
    name?: string,
    organization?: string
  }) {
    const { accessToken } = JSON.parse(LocalStorage.getItem('user'))
    return axios.post(`${process.env.REACT_APP_JOB_PORTAL_BASE_URL}/user`, data, {
      headers: {
        Authorization: accessToken
      }
    }).then(res => res.data)
  }
}

export default UserService