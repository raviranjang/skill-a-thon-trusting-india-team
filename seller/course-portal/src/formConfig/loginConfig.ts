import { FieldProp } from '../typings'

const loginConfig: Array<FieldProp> = [
  {
    name: 'username',
    label: 'UserName',
    rules: [
      {
        required: true,
        message: 'Name is required',
      },
    ],
    field: 'input',
  },
  {
    name: 'password',
    label: 'Password',
    rules: [
      {
        required: true,
        message: 'Password is required',
      },
    ],
    field: 'password',
  },
]

export default loginConfig
