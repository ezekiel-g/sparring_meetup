import React, { Component } from 'react'

class ProposalShowContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      user_id: null,
      sport_id: null,
      description: ''
    }
  }

  componentDidMount() {
    fetch(`/api/v1/proposals/${this.props.params.id}`, {
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
        user_id: body.user_id,
        sport_id: body.sport_id,
        description: body.description
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
    }

  render() {

    return (
      <div>
        {this.state.description}<br/><br/>
      </div>
    )
  }
}

export default ProposalShowContainer
