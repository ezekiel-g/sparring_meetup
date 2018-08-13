import React, { Component } from 'react'
import { Link } from 'react-router'

class ProposalTile extends Component {
  constructor(props) {
    super(props)
    this.state = {

    }
  }

  render() {

    return (
      <div>
        <div className='bold'>SPARRING PROPOSAL CREATED BY {this.props.username}: </div>
        "{this.props.description}"<br/>
      </div>
    )
  }
}

export default ProposalTile
