import { Request } from "express";
import { createAuthorizationHeader } from "../authBuilder";
import courseDao from "../courseDao";
import { getHttpService } from "../httpService";

const httpService = getHttpService(process.env.SAMGARA_BAP_URL)
class CourseBPPService {
    
    async handleInit(req : Request) {
      const initDto = req.body 
      initDto.context = initDto.context || {}
      initDto.context.domain = 'dsep:courses';
      initDto.context.action = 'search';
      initDto.context.bpp_id = 'bpp.dsep.samagra.io';
      initDto.context.bpp_uri = 'https://bpp.dsep.samagra.io';
      //to do get from mongo db
      const initResponse = courseDao.getInitResponse()
      initResponse.context.bpp_id = 'bpp.dsep.samagra.io';
      initResponse.context.bpp_uri = 'https://bpp.dsep.samagra.io';
      initResponse.context.action = 'on_init';
      try {
        const authHeader = await createAuthorizationHeader(initResponse)
        const requestOptions = {
          headers: {
            'Content-Type': 'application/json',
            authorization: authHeader,
          },
          withCredentials: true,
          mode: 'cors',
        };
        const data = await httpService.post("/on_init", initResponse, requestOptions)
        console.log("Successfully posted in bap", data)
      } catch(err) {
        console.log("Error while posting to search", err)
      }

    }

    async handleSearch(req : Request) {
      const searchDto = req.body 
      searchDto.context = searchDto.context || {}
      searchDto.context.domain = 'dsep:courses';
      searchDto.context.action = 'search';
      searchDto.context.bpp_id = 'bpp.dsep.samagra.io';
      searchDto.context.bpp_uri = 'https://bpp.dsep.samagra.io';
      //to do get from mongo db
      const searchResponse = courseDao.getCourseSearchResponse()
      searchResponse.context = searchResponse.context || {}
      searchResponse.context.bpp_id = 'bpp.dsep.samagra.io';
      searchResponse.context.bpp_uri = 'https://bpp.dsep.samagra.io';
      searchResponse.context.action = 'on_search';
      try {
        const authHeader = await createAuthorizationHeader(searchResponse)
        const requestOptions = {
          headers: {
            'Content-Type': 'application/json',
            authorization: authHeader,
          },
          withCredentials: true,
          mode: 'cors',
        };
        const data = await httpService.post("/on_search", searchResponse, requestOptions)
        console.log("Successfully posted in bap", data)
      } catch(err) {
        console.log("Error while posting to search", err)
      }

    }

    async handleConfirm(req : Request) {
      const confirmDto = req.body 
      confirmDto.context = confirmDto.context || {}
      confirmDto.context.domain = 'dsep:courses';
      confirmDto.context.action = 'search';
      confirmDto.context.bpp_id = 'bpp.dsep.samagra.io';
      confirmDto.context.bpp_uri = 'https://bpp.dsep.samagra.io';
      //to do get from mongo db
      const confirmResponse = courseDao.getConfirmDao()
      confirmResponse.context.bpp_id = 'bpp.dsep.samagra.io';
      confirmResponse.context.bpp_uri = 'https://bpp.dsep.samagra.io';
      confirmResponse.context.action = 'on_confirm';
      try {
        const authHeader = await createAuthorizationHeader(confirmResponse)
        const requestOptions = {
          headers: {
            'Content-Type': 'application/json',
            authorization: authHeader,
          },
          withCredentials: true,
          mode: 'cors',
        };
        const data = await httpService.post("/on_confirm", confirmResponse, requestOptions)
        console.log("Successfully posted in bap", data)
      } catch(err) {
        console.log("Error while posting to search", err)
      }

    }

    async handleSelect(req : Request) {
      const selectDto = req.body 
      selectDto.context = selectDto.context || {}
      selectDto.context.domain = 'dsep:courses';
      selectDto.context.action = 'search';
      selectDto.context.bpp_id = 'bpp.dsep.samagra.io';
      selectDto.context.bpp_uri = 'https://bpp.dsep.samagra.io';
      //to do get from mongo db
      const selectResponse = courseDao.getSelectDao()
      selectResponse.context.bpp_id = 'bpp.dsep.samagra.io';
      selectResponse.context.bpp_uri = 'https://bpp.dsep.samagra.io';
      selectResponse.context.action = 'on_select';
      try {
        const authHeader = await createAuthorizationHeader(selectResponse)
        const requestOptions = {
          headers: {
            'Content-Type': 'application/json',
            authorization: authHeader,
          },
          withCredentials: true,
          mode: 'cors',
        };
        const data = await httpService.post("/on_select", selectResponse, requestOptions)
        console.log("Successfully posted in bap", data)
      } catch(err) {
        console.log("Error while posting to search", err)
      }

    }
}

const courseBppService = new CourseBPPService()

export default courseBppService

