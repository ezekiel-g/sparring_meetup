import React from 'react'

const Message = ({ username, message, icon }) => {
  return(
    <div>
      <strong>{username}: </strong>
      {message}
    </div>
  )
}

export default Message
