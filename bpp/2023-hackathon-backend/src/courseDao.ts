import { confirmResponse } from "./mocks/confirmResponse.mock"
import { initResponse } from "./mocks/initResponse.mock"
import { searchResponseByCourseName } from "./mocks/searchResponse.mock"

class CourseDao {

    getCourseSearchResponse(name? : string) : any {
        //TODO: get from mongodb
        return searchResponseByCourseName()        
    }

    getInitResponse() {
      return initResponse()
    }

    getConfirmDao() {
      return confirmResponse()
    }

    getSelectDao() {
      return selectResponse()
    }

}

const courseDao = new CourseDao()

export default courseDao 
