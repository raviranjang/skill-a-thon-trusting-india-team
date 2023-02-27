import React from 'react'

interface CenterProps {
  children: JSX.Element
}

const Center = (props: CenterProps) => {
  return (
    <div
      style={{
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
        width: '100%',
        height: '100%',
      }}
    >
      {props.children}
    </div>
  )
}

export default Center
