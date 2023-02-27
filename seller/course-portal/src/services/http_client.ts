import axios, { AxiosInstance } from 'axios'
import OperationError from '../constants/OperationError'

export default class HttpClient {
  private readonly instance: AxiosInstance

  constructor(url: string) {
    this.instance = axios.create({
      baseURL: url,
    })
  }

  protected interceptRequest(headers: Record<string, string>) {
    this.instance.interceptors.request.use((req) => {
      Object.keys(headers).forEach((key: string) => {
        req.headers[key] = headers[key]
      })
      req.headers['Content-type'] = 'application/json'
      return req
    })
  }

  handleError(error: any) {
    console.log('Error', error)
    const codeStrMap: Record<string, string> = {
      500: 'Internal Server Error',
      404: 'Not Found',
      400: 'Bad Request',
      429: 'Too may requests',
    }
    if (!error.httpStatusCode || !codeStrMap[error.httpStatusCode]) {
      return new OperationError(500, codeStrMap[500])
    }
    return new OperationError(error.httpStatusCode, codeStrMap[error.httpStatusCode])
  }

  protected interceptResponse() {
    this.instance.interceptors.response.use(
      (res) => {
        return Promise.resolve(res)
      },
      (error) => {
        return Promise.reject(this.handleError(error))
      },
    )
  }

  async post(url: string, body: Record<string, any>, headers: Record<string, any>) {
    const { data } = await this.instance.post(url, body, { headers })
    return data
  }

  async get(url: string, headers: Record<string, any>) {
    const { data } = await this.instance.get(url, { headers })
    return data
  }
}
