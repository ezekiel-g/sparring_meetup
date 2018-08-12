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
        <div className='button_link'>
          <Link to={`/proposals/${this.props.id}`}>
            {this.props.description}
          </Link>
        </div>
        <br/>
      </div>
    )
  }
}

export default ProposalTile
