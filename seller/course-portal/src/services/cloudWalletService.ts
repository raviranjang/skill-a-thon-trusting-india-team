import OperationError from '../constants/OperationError'
import HttpClient from './http_client'
import env from '../constants/env'

export interface PasswordLessLoginType {
  loginToken: string
}

export interface ConfirmPasswordResponse {
  accessToken: string
  did: string
  refreshToken: string
  idToken: string
}

class CloudWalletApi extends HttpClient {
  constructor() {
    console.log('ENV_VARIABLES', env)
    super(env.REACT_APP_CLOUD_WALLET_URL || '')
    this.interceptRequest({})
    this.interceptResponse()
  }

  protected interceptRequest(headers: Record<string, any>): void {
    super.interceptRequest({
      'Api-Key': env.REACT_APP_CLOUD_WALLET_API_KEY || headers.API_KEY || '',
    })
  }

  async passwordLessLogin(emailId: string): Promise<PasswordLessLoginType | OperationError> {
    try {
      const data = await this.post(
        '/users/log-in-passwordless',
        {
          username: emailId,
        },
        {},
      )
      return data
    } catch (err) {
      console.log('Error', err)
      return new OperationError(500, 'Internal Server Error')
    }
  }

  async confirmSignIn(
    token: string,
    confirmationCode: string,
  ): Promise<ConfirmPasswordResponse | OperationError> {
    try {
      const data = await this.post(
        '/users/log-in-passwordless/confirm',
        {
          token,
          confirmationCode,
        },
        {},
      )
      return data
    } catch (err) {
      return new OperationError(500, 'Internal server error')
    }
  }
}

export const cloudWalletApi = new CloudWalletApi()
