import React from 'react'
import { BrowserRouter, Routes, Route } from 'react-router-dom'
import './App.css'
import Courses from './containers/Courses'
import CreateCourseContainer from './containers/CreateCourseContainer'
import Login from './containers/Login'
import CourseStep from './containers/CourseStep'
import CourseCompletion from './containers/CourseCompletion'
import OtpLogin from './containers/OtpLogin'
import OtpConfirm from './containers/OtpConfirm'
import CourseCertifcates from './containers/Credentials'

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<OtpLogin />}></Route>
        <Route path="/create-course" element={<CreateCourseContainer />}></Route>
        <Route path="/courses" element={<Courses />}></Route>
        <Route path="/login" element={<Login />}></Route>
        <Route path="/steps" element={<CourseStep />}></Route>
        <Route path="/completion" element={<CourseCompletion />}></Route>
        <Route path="/passwordless-login" element={<OtpLogin />}></Route>
        <Route path="/otp-confirm" element={<OtpConfirm />}></Route>
        <Route path="/certificates" element={<CourseCertifcates />}></Route>
      </Routes>
    </BrowserRouter>
  )
}

export default App
