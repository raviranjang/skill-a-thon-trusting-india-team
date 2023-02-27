import { Express } from 'express'
import CourseController from './controller'
export default function (app: Express) {
  app.post('/course', CourseController.addCourse)
  app.get('/course', CourseController.getCourses)
  app.post('/course/apply', CourseController.applyCourse)
  app.get('/course/applicants/:courseId', CourseController.getApplicants)
}