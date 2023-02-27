import React, { useEffect, useState } from 'react'
import { useNavigate } from 'react-router'
import { Card, Image, Space, Spin } from 'antd'
import MainLayout from '../MainLayout'
import { CourseCertificate } from '../typings'
import issuanceService from '../services/issuanceService'
import walletService from '../services/walletService'

const CourseCertifcates = () => {
  const [credentials, setCredentials] = useState<Array<CourseCertificate> | []>([])
  const navigate = useNavigate()
  const [isLoading, setIsLoading] = useState(true)
  useEffect(() => {
    walletService.init()
    async function fetchCredentials() {
      try {
        const data = await issuanceService.getCredentials(walletService.getAccessToken() || '')
        console.log('Credentials', data)
        const courseCertificates: CourseCertificate[] = data
          .filter((cred: any) => cred.type[1] === 'MyBuddyFinalCourse')
          .map((cred: any) => cred.credentialSubject)
        setCredentials(courseCertificates.reverse().splice(0, 4))
        setIsLoading(false)
      } catch (err) {
        console.error('Error', err)
      }
    }
    fetchCredentials()
  }, [])

  return (
    <MainLayout
      headerBGColor="#001529"
      colorBGContainer="white"
      items={[
        {
          key: 'nav_courses',
          label: 'Current Course',
          onClick() {
            navigate('/steps')
          },
        },
        {
          key: 'nav_certificates',
          label: 'Course Certificates',
          onClick() {
            navigate('/certificates')
          },
        },
      ]}
      curr={'Certificates'}
    >
      <Spin spinning={isLoading}>
        <Space direction="vertical">
          {credentials.map((cert: CourseCertificate, i: number) => (
            <Card
              key={`card_${i}`}
              title="My Buddy Course Certificate"
              bordered={false}
              style={{ width: 300 }}
            >
              <Image src={'https://sunbird.org/images/logo/logo.svg'} />
              <p>Course Name: {cert.coursename}</p>
              <p>Applicant Name: {cert.applicantname}</p>
              <p>Category: {cert.category}</p>
              <p>Steps Involved: {cert.stepsinvolved}</p>
              <p>Completion Date: {cert.completiondate}</p>
              <p>Skills: {cert.skills}</p>
              <p>Course Provider: {cert.courseprovider}</p>
              <p>Issuer: {cert.issuingAuthority}</p>
            </Card>
          ))}
        </Space>
      </Spin>
    </MainLayout>
  )
}

export default CourseCertifcates
