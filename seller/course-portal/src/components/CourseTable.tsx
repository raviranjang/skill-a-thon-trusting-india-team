import { Table } from 'antd'
import React from 'react'
import { Course } from '../typings'

interface CourseColumn {
  title: string
  dataIndex: string
  key: string
}

interface CourseTableProps {
  dataSource: Array<Course>
  columns: Array<CourseColumn>
}
const CourseTable = (props: CourseTableProps) => {
  return <Table dataSource={props.dataSource} columns={props.columns}></Table>
}

export default CourseTable
