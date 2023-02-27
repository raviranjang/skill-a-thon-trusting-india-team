import { FieldProp } from '../typings'

const thirdTask: Array<FieldProp> = [
  {
    name: 'q5',
    label: '4 + 4 =',
    rules: [
      {
        required: true,
        message: 'Answer is required',
      },
    ],
    field: 'input',
  },
  {
    name: 'q6',
    label: '26 * 26 =',
    rules: [
      {
        required: true,
        message: 'Answer is required',
      },
    ],
    field: 'input',
  },
]

export default thirdTask
