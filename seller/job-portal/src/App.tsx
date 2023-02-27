import React from 'react';
import { BrowserRouter, Routes, Route, useLocation } from 'react-router-dom'
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import Login from './Components/Login';
import Dashboard from './Components/Dashboard';
import JobDetails from './Components/JobDetails';
import Applications from './Components/Applications';
import ApplicationDetails from './Components/ApplicationDetails';
import Register from './Components/Register';
import PostJob from './Components/PostJob';
import VerifyOtp from './Components/VerifyOtp';


function App() {
  return (
    <BrowserRouter basename="/jobportal">
      <Routes>
        <Route path="/" element={<Login />}></Route>
        <Route path="/login" element={<Login />}></Route>
        {/* <Route path="/otp-verify" element={<VerifyOtp />}></Route> */}
        <Route path="/register" element={<Register />}></Route>
        <Route path="/dashboard" element={<Dashboard />}></Route>
        <Route path="/post-job" element={<PostJob />}></Route>
        <Route path="/job/:id" element={<JobDetails />}></Route>
        <Route path="/applications/:id" element={<Applications />}></Route>
        <Route path="/application-details/:id" element={<ApplicationDetails />}></Route>
      </Routes>
    </BrowserRouter>
  );
}

export default App;
