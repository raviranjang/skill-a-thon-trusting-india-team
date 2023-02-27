import {Request, Response} from 'express'
import { sendAcknowledgement } from '../utils'
import courseBppService from './course.bpp.services'

class CourseBPPController {
    

    search(req : Request, res : Response) {
        sendAcknowledgement(res, "ACK")
        courseBppService.handleSearch(req)

    }

    init(req : Request, res : Response) {
        sendAcknowledgement(res, "ACK")
        courseBppService.handleInit(req)
    }

    confirm(req : Request, res : Response) {
        sendAcknowledgement(res, "ACK")
        courseBppService.handleConfirm(req)
    }

    select(req : Request, res : Response) {
        sendAcknowledgement(res, "ACK")
        courseBppService.handleSelect(req)
    }
}


const courseBPPController : CourseBPPController = new CourseBPPController()
export default courseBPPController 