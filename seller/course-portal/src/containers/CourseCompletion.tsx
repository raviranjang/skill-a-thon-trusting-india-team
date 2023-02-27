import React, { useState } from 'react'
import { Button, Image, Modal, Result } from 'antd'
import { useNavigate } from 'react-router'
import MainLayout from '../MainLayout'
import LocalStorage from '../utils/LocalStorage'
import { SHARED_VC } from '../constants/LocalStorageItems'
import Center from '../components/Center'

const CourseCompletion = () => {
  const navigate = useNavigate()
  const [isModalOpen, setIsModalOpen] = useState(false)
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
        <Result
          status={'success'}
          title="Successfully completed the course"
          subTitle="Congratulations on completing the course"
          extra={[
            <Button
              type="primary"
              key="console"
              onClick={() => {
                window.open(JSON.parse(LocalStorage.getItem(SHARED_VC)).sharingUrl, '_blank')
              }}
            >
              Download Certificate
            </Button>,
            <Button
              key="buy"
              onClick={() => {
                setIsModalOpen(true)
              }}
            >
              Share
            </Button>,
          ]}
        ></Result>
        <Modal
          title="Scan QR to get your VC"
          open={isModalOpen}
          onOk={() => {
            setIsModalOpen(false)
          }}
          onCancel={() => {
            setIsModalOpen(false)
          }}
        >
          <Center>
            <Image src={JSON.parse(LocalStorage.getItem(SHARED_VC)).qrCode} />
          </Center>
        </Modal>
      </>
    </MainLayout>
  )
}

export default CourseCompletion
