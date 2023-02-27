import firstTask from '../formConfig/firstTask.config'
import { TaskProps } from '../typings'
import FormRenderer from './FormRenderer'

const FirstTask = (props: TaskProps) => {
  return (
    <>
      <FormRenderer fieldProps={firstTask} onFinish={props.onFinish} submitBtnText="Next" />
    </>
  )
}

export default FirstTask
