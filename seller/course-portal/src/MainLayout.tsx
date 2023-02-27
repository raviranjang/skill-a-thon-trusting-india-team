import React, { useState } from 'react'
import { Breadcrumb, Layout, Menu } from 'antd'
import type { MenuProps } from 'antd'

const { Header, Content, Footer, Sider } = Layout
type MenuItem = Required<MenuProps>['items'][number]

interface MainLayoutProps {
  children: JSX.Element
  items: Array<MenuItem>
  headerBGColor: string
  colorBGContainer: string
  curr: 'Courses' | 'Create Courses' | 'Login' | 'Courses Step' | 'Certificates'
}
const MainLayout = (props: MainLayoutProps) => {
  const [collapsed, setCollapsed] = useState(false)
  return (
    <Layout style={{ minHeight: '100vh' }}>
      <Sider collapsible collapsed={collapsed} onCollapse={(value) => setCollapsed(value)}>
        <div style={{ height: 32, margin: 16, background: 'rgba(255, 255, 255, 0.2)' }} />
        <Menu theme="dark" defaultSelectedKeys={['1']} mode="inline" items={props.items} />
      </Sider>
      <Layout className="site-layout">
        <Header style={{ padding: 0, background: props.headerBGColor }} />
        <Content style={{ margin: '0 16px' }}>
          <Breadcrumb style={{ margin: '16px 0' }}>
            <Breadcrumb.Item>{props.curr}</Breadcrumb.Item>
          </Breadcrumb>
          <div style={{ padding: 24, minHeight: 360, background: props.colorBGContainer }}>
            {props.children}
          </div>
        </Content>
        <Footer style={{ textAlign: 'center' }}>Course Portal</Footer>
      </Layout>
    </Layout>
  )
}

export default MainLayout
