import React from 'react'
import { useNavigate } from 'react-router'
import FormRenderer from '../components/FormRenderer'
import MainLayout from '../MainLayout'
import otpLoginConfig from '../formConfig/otpLoginConfig'
import { cloudWalletApi } from '../services/cloudWalletService'
import LocalStorage from '../utils/LocalStorage'
import { APPLICANT_NAME, LOGIN_TOKEN } from '../constants/LocalStorageItems'

const OtpLogin = () => {
  const navigate = useNavigate()
  return (
    <MainLayout headerBGColor="#001529" colorBGContainer="white" items={[]} curr="Login">
      <FormRenderer
        fieldProps={otpLoginConfig}
        onFinish={async (values) => {
          try {
            const data = await cloudWalletApi.passwordLessLogin(values.email)
            // console.log("PASSWORD_LESS_LOGIN_DATA", data)
            LocalStorage.setItem(APPLICANT_NAME, values.applicantname)

            LocalStorage.setItem(LOGIN_TOKEN, data)
            navigate('/otp-confirm')
          } catch (err) {
            console.log('OTP_LOGIN', err)
          }
        }}
      />
    </MainLayout>
  )
}

export default OtpLogin
