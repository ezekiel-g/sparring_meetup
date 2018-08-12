import React, { Component } from 'react'
import { Router, Route, IndexRoute, browserHistory } from 'react-router'
import Home from './containers/Home'
import ProposalsIndexContainer from './containers/ProposalsIndexContainer'
import ProposalShowContainer from './containers/ProposalShowContainer'
import ProposalTile from './components/ProposalTile'
import MessagesIndexContainer from './containers/MessagesIndexContainer'

class App extends Component {
  constructor(props) {
    super(props)
    this.state = {

    }
  }

  render() {
    return (
      <Router history={browserHistory}>
        <Route path='/'>
          <IndexRoute component={Home} />
          <Route path='/proposals' component={ProposalsIndexContainer} />
          <Route path='/proposals/:id' component={ProposalShowContainer} />
          <Route path='/messages' component={MessagesIndexContainer} />
        </Route>
      </Router>
    )
  }
}

export default App
