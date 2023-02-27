import { NextFunction, Request, Response } from "express";
import Clients from "../clients";

export async function authenticate(req: Request, res: Response, next: NextFunction) {
  const bearToken = req.headers['authorization']
  try {
    const did = await Clients.getDid(bearToken)
    if (!did) throw new Error('Invalid accessToken')
    req['user'] = did
    next()
  } catch (e) {
    return res.status(401).json({
      status: false,
      message: 'Invalid accessToken'
    })
  }
}