import thirdTask from '../formConfig/thirdTask.config'
import { TaskProps } from '../typings'
import FormRenderer from './FormRenderer'

const ThirdTask = (props: TaskProps) => {
  return (
    <>
      <FormRenderer fieldProps={thirdTask} onFinish={props.onFinish} />
    </>
  )
}

export default ThirdTask
