import { Button, Col, Input, Row, Space } from 'antd'
import React, { useState } from 'react'
import { useNavigate } from 'react-router'
import Center from '../components/Center'
import { AFFINIDI_WALLET_KEY, LOGIN_TOKEN } from '../constants/LocalStorageItems'
import MainLayout from '../MainLayout'
import { cloudWalletApi } from '../services/cloudWalletService'
import EncodingUtil from '../utils/EncodingUtil'
import LocalStorage from '../utils/LocalStorage'

const OtpConfirm = () => {
  const navigate = useNavigate()
  const [otp, setOtp] = useState<string[]>(['', '', '', '', '', ''])
  return (
    <MainLayout headerBGColor="#001529" colorBGContainer="white" items={[]} curr="Login">
      <Input.Group size="large">
        <Center>
          <Space direction="vertical">
            <Row gutter={9}>
              {otp.map((s, i) => (
                <Col key={`col_${i}`} span={1}>
                  <Input
                    maxLength={1}
                    onChange={(e) => {
                      const newOtp = [...otp]
                      newOtp[i] = e.target.value
                      setOtp(newOtp)
                    }}
                  />
                </Col>
              ))}
            </Row>
            <Row gutter={5}>
              <Col span={2}>
                <Button
                  type="primary"
                  onClick={async () => {
                    try {
                      if (otp.filter((v) => !!v).length === otp.length) {
                        const value = otp.join('')
                        console.log('OTP_VALUE', value)
                        const token = JSON.parse(LocalStorage.getItem(LOGIN_TOKEN))

                        const data = await cloudWalletApi.confirmSignIn(token, value)
                        console.log('LOGIN_DATA', data)
                        const encodeStr: string = EncodingUtil.encodeToBase64(data)
                        LocalStorage.setItem(AFFINIDI_WALLET_KEY, encodeStr)
                        navigate('/steps')
                      }
                    } catch (er) {
                      console.log('OTP_ERROR', er)
                    } finally {
                      LocalStorage.removeItem(LOGIN_TOKEN)
                    }
                  }}
                >
                  Submit
                </Button>
              </Col>
            </Row>
          </Space>
        </Center>
      </Input.Group>
    </MainLayout>
  )
}

export default OtpConfirm
