import { Request, Response } from "express"
import { database, userCollection } from "../constants"
import client from "../mongodb"


export default class JobController {

  static async getUser(req: Request, res: Response) {
    try {
      const did = req['user']
      const db = client.db(database)
      const collectionObj = db.collection(userCollection)
      const userInfo = await collectionObj.findOne({ did })
      return res.status(200).json({ user: userInfo })
    } catch (e) {
      return res.status(500).json(e.message)
    }
  }

  static async register(req: Request, res: Response) {
    try {
      const { body } = req
      const did = req['user']
      const db = client.db(database)
      const collectionObj = db.collection(userCollection)
      const userInfo = await collectionObj.findOne({ did })
      if (userInfo) {
        return res.status(400).json({
          status: false,
          message: 'User already registered'
        })
      }
      await collectionObj.insertOne({ did, ...body })
      return res.status(200).json({
        status: true,
        message: 'User registered successfully'
      })
    } catch (e) {
      return res.status(500).json(e.message)
    }
  }

}