import { Express } from 'express'
import UserController from './controller'
import { authenticate } from '../middleware/authentication'
export default function (app: Express) {
  app.get('/user', authenticate, UserController.getUser)
  app.post('/user', authenticate, UserController.register)
}