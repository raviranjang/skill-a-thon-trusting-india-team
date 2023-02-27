import axios from 'axios'
import LocalStorage from '../utils/LocalStorage'
const cloudWalletService = {
  login(username: string, password: string) {
    return axios.post(`${process.env.REACT_APP_CLOUD_WALLET_SERVICE_BASE_URL}/users/login`,
      { username, password },
      {
        headers: {
          'API-KEY': process.env.REACT_APP_CLOUD_WALLET_SERVICE_API_KEY
        }
      }
    ).then(response => response.data)
  },

  signUp(username: string, password: string) {
    return axios.post(`${process.env.REACT_APP_CLOUD_WALLET_SERVICE_BASE_URL}/users/signup`,
      { username, password },
      {
        headers: {
          'API-KEY': process.env.REACT_APP_CLOUD_WALLET_SERVICE_API_KEY
        }
      }
    ).then(response => response.data)
  },

  confirmSignup(token: string, confirmationCode: string) {
    return axios.post(`${process.env.REACT_APP_CLOUD_WALLET_SERVICE_BASE_URL}/users/signup/confirm`,
      {
        token,
        confirmationCode
      },
      {
        headers: {
          'API-KEY': process.env.REACT_APP_CLOUD_WALLET_SERVICE_API_KEY
        }
      }
    ).then(response => response.data)
  },

  getVcDetails(url: string) {
    return axios.get(url).then(response => response.data)
  },

  verifyVC(vcData: any) {
    const { accessToken } = JSON.parse(LocalStorage.getItem('user'))
    return axios.post(`${process.env.REACT_APP_AFFINIDI_VERIFY_BASE_URL}/verifier/verify-vcs`, vcData, {
      headers: {
        'API-KEY': process.env.REACT_APP_AFFINIDI_VERIFY_API_KEY
      }
    }).then(res => res.data)
  }
}

export default cloudWalletService