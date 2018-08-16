import React, { Component } from 'react'
import ProposalTile from './ProposalTile'

class SearchBar extends Component {
  constructor(props) {
    super(props);
    this.state = {
      proposals: [],
      searchString: '',
      searchError: ''
    }
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    const newSearchString = event.target.value
    this.setState({ searchString: newSearchString })
  }

  handleSubmit(event) {
    event.preventDefault()
    if (this.state.searchString != '') {
      const body = JSON.stringify({
        search_string: this.state.searchString
      })
      fetch('/api/v1/search/proposals/search', {
        method: 'POST',
        body: body,
        credentials: 'same-origin',
        headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' }
      })
      .then(response => response.json())
      .then(body => {
        this.setState({ proposals: body.proposals, searchError: ''})
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
    } else {
      this.setState({ searchError: <div>EMPTY SEARCH</div> })
    }
  }

  render() {
    const proposals = this.state.proposals.map(proposal => {
      return (
        <ProposalTile
          key={proposal.id}
          id={proposal.id}
          user_id={proposal.user_id}
          sport_id={proposal.sport_id}
          description={proposal.description}
          sport={proposal.sport}
          username={proposal.username}
          email={proposal.email}
          age={proposal.age}
          gender={proposal.gender}
          height={proposal.height}
          weight={proposal.weight}
          reach={proposal.reach}
        />
      )
    })

    return (
      <div>
        {this.state.searchError}
        <form onSubmit={this.handleSubmit}>
          <label>SEARCH PROPOSALS</label><br/>
          <input type='text' name='searchString' value={this.state.searchString} onChange={this.handleChange} />
          <input type='submit' value='SUBMIT' /><br/><br/>
        </form>
        {proposals}
      </div>
    )
  }
}

export default SearchBar
