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
      <div className='tile'>
        <div className='bold'>*SPARRING PROPOSAL FOR {this.props.sport}* </div>
        <span className='bold'>USERNAME: </span>{this.props.username} {' '}
        <span className='bold'>EMAIL: </span>{this.props.email} {' '}
        <span className='bold'>AGE: </span>{this.props.age} {' '}
        <span className='bold'>GENDER: </span>{this.props.gender} {' '}
        <span className='bold'>HEIGHT: </span>{this.props.height} {' '}
        <span className='bold'>WEIGHT: </span>{this.props.weight} {' '}
        <span className='bold'>REACH: </span>{this.props.reach}<br/>
        "{this.props.description}"<br/>
      </div>
    )
  }
}

export default ProposalTile
