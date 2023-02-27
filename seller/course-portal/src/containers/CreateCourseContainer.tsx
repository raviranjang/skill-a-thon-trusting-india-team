import React from 'react'
import { useNavigate } from 'react-router'
import FormRenderer from '../components/FormRenderer'
import MainLayout from '../MainLayout'
import courseService from '../services/courseService'

const CreateCourseContainer = () => {
  const navigate = useNavigate()
  return (
    <MainLayout
      headerBGColor="#001529"
      colorBGContainer="white"
      items={[
        {
          key: 'nav_courses',
          label: 'Courses',
          onClick() {
            navigate('/courses')
          },
        },
        {
          key: 'create_course',
          label: 'Create Course',
          onClick() {
            navigate('/create-course')
          },
        },
      ]}
      curr="Create Courses"
    >
      <FormRenderer
        onFinish={(values) => {
          courseService.addCourse(values)
          navigate('/courses', {
            state: { value: 'posted_data' },
          })
        }}
        fieldProps={[
          {
            name: 'name',
            label: 'Course Name',
            rules: [
              {
                required: true,
                message: 'Name is required',
              },
            ],
            field: 'input',
          },
          {
            name: 'price',
            label: 'Course Price',
            rules: [
              {
                required: true,
                message: 'Price is required',
              },
            ],
            field: 'input',
          },
          {
            name: 'instructor',
            label: 'Instructor Name',
            rules: [
              {
                required: true,
                message: 'Instructor is required',
              },
            ],
            field: 'input',
          },
          {
            name: 'seats',
            label: 'Seats',
            rules: [
              {
                required: true,
                message: 'Seats number is required',
              },
            ],
            field: 'input',
          },

          {
            name: 'ratings',
            label: 'Ratings',
            rules: [
              {
                required: false,
                message: 'Seats number is required',
              },
            ],
            field: 'input',
          },
        ]}
      ></FormRenderer>
    </MainLayout>
  )
}

export default CreateCourseContainer
