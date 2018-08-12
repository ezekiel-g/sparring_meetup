import React, { Component } from 'react'
import { Link } from 'react-router'
import ProposalsIndexContainer from './ProposalsIndexContainer'

class Home extends Component {
  constructor(props) {
    super(props)
    this.state = {

    }
  }

  render() {
    return (
      <div>
        <h2>SPARRING MEETUP</h2>
        <ProposalsIndexContainer />
      </div>
    )
  }
}

export default Home
