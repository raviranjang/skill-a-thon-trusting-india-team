import React from 'react'
import { Form, Checkbox, Input, Button } from 'antd'
import { FieldProp } from '../typings'

interface CreateCourseProps {
  fieldProps: Array<FieldProp>
  onFinish: (values: any) => void
  submitBtnText?: string
}

const renderFormFields = (fieldProp: FieldProp) => {
  const fieldRenderMap = {
    input: () => <Input />,
    checkbox: () => <Checkbox />,
    password: () => <Input.Password />,
  }
  return (
    <Form.Item
      key={`key_${fieldProp.name}`}
      label={fieldProp.label}
      name={fieldProp.name}
      rules={fieldProp.rules}
    >
      {fieldRenderMap[fieldProp.field]()}
    </Form.Item>
  )
}

const FormRenderer = (prop: CreateCourseProps) => {
  const onFinish = (values: any) => {
    prop.onFinish(values)
  }

  const onFinishFailed = (err: any) => {
    console.log('Err', err)
  }

  return (
    <Form
      name="basic"
      labelCol={{ span: 8 }}
      wrapperCol={{ span: 16 }}
      style={{ maxWidth: 600 }}
      initialValues={{ remember: true }}
      onFinish={onFinish}
      onFinishFailed={onFinishFailed}
      autoComplete="off"
    >
      {prop.fieldProps.map((fieldProp: FieldProp) => renderFormFields(fieldProp))}
      <Form.Item wrapperCol={{ offset: 8, span: 16 }}>
        <Button type="primary" htmlType="submit">
          {prop.submitBtnText || 'Submit'}
        </Button>
      </Form.Item>
    </Form>
  )
}

export default FormRenderer
