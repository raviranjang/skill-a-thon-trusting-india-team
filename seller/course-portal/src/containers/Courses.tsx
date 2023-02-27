import React, { useEffect, useState } from 'react'
import { useLocation, useNavigate } from 'react-router'
import { notification } from 'antd'
import CourseTable from '../components/CourseTable'
import MainLayout from '../MainLayout'
import courseService from '../services/courseService'
import { Course } from '../typings'

const Courses = () => {
  const [courses, setCourses] = useState<Array<Course> | []>([])
  const navigate = useNavigate()
  const location = useLocation()
  useEffect(() => {
    const currCourses = courseService.getCourses()
    setCourses(currCourses)
  }, [])
  useEffect(() => {
    if (location?.state?.value === 'posted_data') {
      notification.info({
        message: 'New Course',
        description: 'Created new course',
        placement: 'topRight',
      })
    }
  }, [location?.state])
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
      curr={'Courses'}
    >
      <CourseTable
        dataSource={courses}
        columns={[
          {
            title: 'Name',
            dataIndex: 'name',
            key: 'name',
          },
          {
            title: 'Price',
            dataIndex: 'price',
            key: 'price',
          },
          {
            title: 'Instructor',
            dataIndex: 'instructor',
            key: 'instructor',
          },
          {
            title: 'Seats',
            dataIndex: 'seats',
            key: 'seats',
          },
          {
            title: 'Ratings',
            dataIndex: 'ratings',
            key: 'ratings',
          },
        ]}
      ></CourseTable>
    </MainLayout>
  )
}

export default Courses
