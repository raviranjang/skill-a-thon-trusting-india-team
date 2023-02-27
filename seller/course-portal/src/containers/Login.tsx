import React from 'react'
import { useNavigate } from 'react-router'
import FormRenderer from '../components/FormRenderer'
import MainLayout from '../MainLayout'
import loginConfig from '../formConfig/loginConfig'

const Login = () => {
  const navigate = useNavigate()
  return (
    <MainLayout headerBGColor="#001529" colorBGContainer="white" items={[]} curr="Login">
      <FormRenderer
        fieldProps={loginConfig}
        onFinish={(values) => {
          console.log(values)
          navigate('/steps')
        }}
      />
    </MainLayout>
  )
}

export default Login
