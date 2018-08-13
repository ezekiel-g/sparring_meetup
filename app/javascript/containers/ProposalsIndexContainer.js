import React, { Component } from 'react'
import ProposalTile from '../components/ProposalTile'
import SearchBar from '../components/SearchBar'
import { Link } from 'react-router'

class ProposalsIndexContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      proposals: []
    }
  }

  componentDidMount() {
    fetch('/api/v1/proposals', {
      credentials: 'same-origin',
    })
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
          error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({
        proposals: body.proposals
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }


  render() {
    let proposals = this.state.proposals.map((proposal) => {
      return (
        <ProposalTile
          key={proposal.id}
          id={proposal.id}
          user_id={proposal.user_id}
          sport_id={proposal.sport_id}
          description={proposal.description}
          username={proposal.username}
        />
      )
    })

    return (
      <div className='container'>
        <SearchBar /><br/>
      </div>
    )
  }
}

export default ProposalsIndexContainer
