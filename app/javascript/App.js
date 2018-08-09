import React, { Component } from 'react'
import { Router, Route, IndexRoute, browserHistory } from 'react-router'
import Home from './containers/Home'
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
        </Route>
      </Router>
    )
  }
}

export default App
