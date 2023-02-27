import { Request, Response } from "express"
import { v4 as uuidv4 } from 'uuid'
import Clients from "../clients"
import { jobsCollection, database } from "../constants"
import client from "../mongodb"


export default class JobController {
  static async addJob(req: Request, res: Response) {
    try {
      const { body } = req
      const user = req['user']
      const db = client.db(database)
      const collectionObj = db.collection(jobsCollection)
      const id = await Clients.addJob(body)
      await collectionObj.insertOne({ ...body, id, createdBy: user })
      return res.status(200).json({
        success: true,
        jobId: id,
        message: "Job created successfully"
      })
    } catch (e) {
      return res.status(500).json(e.message)
    }
  }

  static async getJobs(req: Request, res: Response) {
    try {
      const user = req['user']
      const db = client.db(database)
      const collectionObj = db.collection(jobsCollection)
      const jobs = await collectionObj.find({ createdBy: user }).toArray()
      return res.status(200).json(jobs)
    } catch (e) {
      return res.status(500).json(e.message)
    }
  }
  static async getJob(req: Request, res: Response) {
    try {
      const { id } = req.params
      const db = client.db(database)
      const collectionObj = db.collection(jobsCollection)
      const job = await collectionObj.findOne({ id })
      return res.status(200).json(job)
    } catch (e) {
      return res.status(500).json(e.message)
    }
  }

  static async getApplicants(req: Request, res: Response) {
    try {
      const { id } = req.params
      const result = await Clients.getApplicants(id)
      return res.status(200).json(result)
    } catch (e) {
      return res.status(500).json(e.message)
    }
  }

  static async updateApplicationStatus(req: Request, res: Response) {
    try {
      const { body } = req
      const result = await Clients.updateApplication(body)
      return res.status(200).json(result)
    } catch (e) {
      return res.status(500).json(e.message)
    }
  }

  static async getApplicationDetails(req: Request, res: Response) {
    try {
      const { id } = req.params
      const result = await Clients.getApplicantDetails(id)
      return res.status(200).json(result)
    } catch (e) {
      return res.status(500).json(e.message)
    }
  }

  static async verifyVC(req: Request, res: Response) {
    try {
      const { body } = req
      const result = await Clients.verifyVC(body)
      return res.status(200).json(result)
    } catch (e) {
      return res.status(500).json(e.message)
    }
  }
}