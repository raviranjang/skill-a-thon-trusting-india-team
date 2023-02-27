import { Express } from 'express'
import JobController from './controller'
import { authenticate } from '../middleware/authentication'
export default function (app: Express) {
  app.post('/jobs', authenticate, JobController.addJob)
  app.get('/jobs', authenticate, JobController.getJobs)
  app.get('/jobs/:id', authenticate, JobController.getJob)
  app.get('/jobs/:id/applicants', authenticate, JobController.getApplicants)
  app.patch('/jobs/applications', authenticate, JobController.updateApplicationStatus)
  app.get('/jobs/applications/:id', authenticate, JobController.getApplicationDetails)
  app.post('/jobs/verify-vc', authenticate, JobController.verifyVC)
}