import secondTask from '../formConfig/secondTask.config'
import { TaskProps } from '../typings'
import FormRenderer from './FormRenderer'

const SecondTask = (props: TaskProps) => {
  return (
    <>
      <FormRenderer fieldProps={secondTask} onFinish={props.onFinish} submitBtnText="Next" />
    </>
  )
}

export default SecondTask
