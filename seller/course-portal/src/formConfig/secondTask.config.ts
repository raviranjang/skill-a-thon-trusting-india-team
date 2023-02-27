import { FieldProp } from '../typings'

const secondTask: Array<FieldProp> = [
  {
    name: 'q3',
    label: '3 + 3 =',
    rules: [
      {
        required: true,
        message: 'Answer is required',
      },
    ],
    field: 'input',
  },
  {
    name: 'q4',
    label: `100 * 100 = `,
    rules: [
      {
        required: true,
        message: 'Answer is required',
      },
    ],
    field: 'input',
  },
]

export default secondTask
