import { FieldProp } from '../typings'

const otpLoginConfig: Array<FieldProp> = [
  {
    name: 'email',
    label: 'Email ID',
    rules: [
      {
        required: true,
        message: 'Email id is required',
      },
    ],
    field: 'input',
  },
  {
    name: 'applicantname',
    label: 'Applicant Name',
    rules: [
      {
        required: true,
        message: 'Applicant Name number is required',
      },
    ],
    field: 'input',
  },
]

export default otpLoginConfig
