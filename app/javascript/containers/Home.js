import React, { Component } from 'react'
import { Link } from 'react-router'

class Home extends Component {
  constructor(props) {
    super(props)
    this.state = {

    }
  }

  render() {
    return (
      <div className='container'>
        <h2>SPARRING MEETUP</h2>
        <Link to='/proposals'>SPARRING PROPOSALS</Link><br/>
        <Link to='/messages'>MESSENGER</Link>
      </div>
    )
  }
}

export default Home
