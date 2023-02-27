import { config } from 'dotenv'
config()
export const port = process.env.PORT
export const mongoUrl = process.env.MONGO_URL
export const database = process.env.DATABASE
export const jobsCollection = process.env.JOB_COLLECTION
export const applicationCollection = process.env.JOB_APPLICATION_COLLECTION
export const courseCollection = process.env.COURSE_COLLECTION
export const courseApplicationCollection = process.env.COURSE_APPLICATION_COLLECTION
export const userCollection = 'users'
export const bapId = process.env.BAP_ID
export const bapUri = process.env.BAP_URL
export const protocolClient = process.env.PROTOCOL_CLIENT
export const SUCESS_STATUS = 200

export const jobDespPortalUrl = process.env.JOB_DESP_PORTAL_URL
export const jobDespPortalApiKey = process.env.JOB_DESP_PORTAL_API_KEY