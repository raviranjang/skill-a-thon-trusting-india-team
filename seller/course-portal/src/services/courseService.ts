import { Course } from '../typings'
import LocalStorage from '../utils/LocalStorage'

const COURSES_KEY: string = 'courses'
const courseService = {
  getCourses(): Array<Course> {
    const coursesString: string = LocalStorage.getItem(COURSES_KEY) || '[]'
    return JSON.parse(coursesString)
  },
  addCourse(course: Course) {
    const courses = this.getCourses()
    courses.push(course)
    LocalStorage.setItem(COURSES_KEY, courses)
  },
}

export default courseService
