import { Response } from "express";
import { SUCESS_STATUS } from "./constants";

export function sleep(ms) {
  // TODO: sleep only in dev environments
  return new Promise((resolve) => {
    setTimeout(resolve, ms);
  });
}

export const sendAcknowledgement = (res : Response, ack : string) => {
  res.status(SUCESS_STATUS).json({
    message : {
      ack : {
        status: ack 
      }
    } 
  })
}
