import { Request, Response } from "express"
import { v4 as uuidv4 } from 'uuid'
import { courseApplicationCollection, courseCollection, database } from "../constants"
import client from "../mongodb"


export default class CourseController {
  static async addCourse(req: Request, res: Response) {
    try {
      const { body } = req
      const db = client.db(database)
      const collectionObj = db.collection(courseCollection)
      const id = uuidv4()
      await collectionObj.insertOne({ id, ...body })
      return res.status(200).json({
        success: true,
        courseId: id,
        message: "course created successfully"
      })
    } catch (e) {
      return res.status(500).json(e.message)
    }
  }

  static async getCourses(req: Request, res: Response) {
    try {
      const db = client.db(database)
      const collectionObj = db.collection(courseCollection)
      const courses = await collectionObj.find().toArray()
      return res.status(200).json(courses)
    } catch (e) {
      return res.status(500).json(e.message)
    }
  }

  static async applyCourse(req: Request, res: Response) {
    try {
      const { body } = req
      const db = client.db(database)
      const { courseId, userId } = body
      const courseCollectionObj = db.collection(courseCollection)
      const course = await courseCollectionObj.findOne({ id: courseId })
      if (!course) {
        res.status(400).json({
          status: false,
          message: "Invalid course id"
        })
        return
      }
      const collectionObj = db.collection(courseApplicationCollection)
      const alreadyExist = await collectionObj.findOne({ courseId, userId: userId })
      if (alreadyExist) {
        res.status(400).json({
          status: false,
          message: "Already applied"
        })
        return
      }
      const result = await collectionObj.insertOne({ ...body, status: 'pending' })
      return res.status(200).json(result)
    } catch (e) {
      return res.status(500).json(e.message)
    }
  }

  static async getApplicants(req: Request, res: Response) {
    try {
      const { params: { courseId } } = req
      const db = client.db(database)
      const collectionObj = db.collection(courseApplicationCollection)
      const applicants = await collectionObj.find({ courseId: courseId }).toArray()
      return res.status(200).json(applicants)
    } catch (e) {
      return res.status(500).json(e.message)
    }
  }
}