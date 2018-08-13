import React from 'react'

const TextFieldWithSubmit = props => {
  return (
    <div>
      <input
        name={props.name}
        onChange={props.handlerFunction}
        type='text'
        value={props.content} />
      <div>
        <input type='submit' value='Chat' />
      </div>
    </div>
  )
}

export default TextFieldWithSubmit
