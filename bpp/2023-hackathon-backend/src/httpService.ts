import axios, { AxiosInstance, AxiosRequestConfig } from "axios";

class HttpService {

    instance : AxiosInstance
    constructor(baseURL : string) {
        this.instance = axios.create({
            baseURL   
        })
    }

    async post(endpoint : string, data : any , config : AxiosRequestConfig) {
        try {
            const response = await this.instance.post(endpoint, data, config)
            return response.data 
        } catch(err) {
            console.log("Error", err)
            return {}
        }
    }

    async get(endpoint : string, config : AxiosRequestConfig) {
        try {
            const response = await this.instance.get(endpoint, config)
            return response.data 
        } catch(err) {
            console.log("Error", err)
        }
    }
}

export const getHttpService = (url : string) => new HttpService(url)
