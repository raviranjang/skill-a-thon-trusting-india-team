import { FieldProp } from '../typings'

const firstTask: Array<FieldProp> = [
  {
    name: 'q1',
    label: '2 + 2 =',
    rules: [
      {
        required: true,
        message: 'Answer is required',
      },
    ],
    field: 'input',
  },
  {
    name: 'q2',
    label: `26 * 3 = `,
    rules: [
      {
        required: true,
        message: 'Answer is required',
      },
    ],
    field: 'input',
  },
]

export default firstTask
