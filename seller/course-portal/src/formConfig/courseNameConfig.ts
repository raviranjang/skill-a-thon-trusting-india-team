import { FieldProp } from '../typings'

export const courseNameConfig: Array<FieldProp> = [
  {
    name: 'coursename',
    label: 'Course Name',
    rules: [
      {
        required: true,
        message: 'Course Name is required',
      },
    ],
    field: 'input',
  },
]
