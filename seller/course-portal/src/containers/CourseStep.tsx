import { Spin, Steps } from 'antd'
import React, { useCallback, useEffect, useState } from 'react'
import { useNavigate } from 'react-router'
import FirstTask from '../components/FirstTask'
import FormRenderer from '../components/FormRenderer'
import SecondTask from '../components/SecondTask'
import ThirdTask from '../components/ThirdTask'
import { APPLICANT_NAME, COURSE_NAME, SHARED_VC } from '../constants/LocalStorageItems'
import { courseNameConfig } from '../formConfig/courseNameConfig'
import MainLayout from '../MainLayout'
import issuanceService from '../services/issuanceService'
import walletService from '../services/walletService'
import LocalStorage from '../utils/LocalStorage'

const steps = [
  {
    title: 'Course Name',
    content: 'coursename-content',
  },
  {
    title: 'First Task',
    content: 'First-content',
  },
  {
    title: 'Second Task',
    content: 'Second-content',
  },
  {
    title: 'Last Task',
    content: 'Last-content',
  },
]

const CourseStep = () => {
  const navigate = useNavigate()
  const [current, setCurrent] = useState(0)
  const [isLoading, setIsLoading] = useState(false)
  useEffect(() => {
    walletService.init()
    console.log('Wallet___', walletService.wallet)
  }, [])
  const next = useCallback(() => {
    if (current !== 3) {
      setCurrent((curr: number) => {
        return curr + 1
      })
    }
  }, [])
  const finish = useCallback(async () => {
    try {
      const did = walletService.getDid() || ''
      const accessToken = walletService.getAccessToken() || ''
      setIsLoading(true)
      const data = await issuanceService.issueCourseVC(did, accessToken, {
        coursename: JSON.parse(LocalStorage.getItem(COURSE_NAME)),
        applicantname: JSON.parse(LocalStorage.getItem(APPLICANT_NAME)),
        stepsinvolved: '3',
        category: 'Computer Science',
        skills: 'Python, Coding, Java',
        completiondate: new Date().toDateString(),
        courseprovider: 'CEC',
        issuingAuthority: 'Sunbird',
      })
      console.log('Issued VC', data)
      LocalStorage.setItem(SHARED_VC, data)
      await issuanceService.issueSunbirdVC(did, accessToken, {
        sunbirdVCUrl: data.sharingUrl,
      })
      navigate('/completion')
    } catch (err) {
      console.error('Err', err)
    }
  }, [])
  const newSteps = [
    <FormRenderer
      onFinish={(values) => {
        LocalStorage.setItem(COURSE_NAME, values.coursename)
        next()
      }}
      fieldProps={courseNameConfig}
    ></FormRenderer>,
    <FirstTask
      onFinish={(values) => {
        console.log('VALUES', values)
        next()
      }}
    />,
    <SecondTask
      onFinish={(values) => {
        console.log('VALUES', values)
        next()
      }}
    />,
    <ThirdTask
      onFinish={(values) => {
        console.log('VALUES', values)
        finish()
      }}
    />,
  ]
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
      curr="Courses Step"
    >
      <>
        <Spin spinning={isLoading}>
          <Steps
            items={steps.map((step) => ({ key: step.title, title: step.title }))}
            current={current}
          />
          <div
            style={{
              display: 'flex',
              justifyContent: 'center',
              alignItems: 'center',
              width: '100%',
              padding: '40px',
            }}
          >
            {newSteps[current]}
          </div>
        </Spin>
      </>
    </MainLayout>
  )
}

export default CourseStep
