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
        <h2>Sparring Meetup</h2>
        <Link to='/proposals'>Sparring Proposals</Link><br/>
        <Link to='/messages'>Messenger</Link>
      </div>
    )
  }
}

export default Home
