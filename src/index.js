const riot = require('riot')
const redux = require('redux')
const thunk = require('redux-thunk').default
require('./tags/workitem-list.tag')
require('./tags/workitem.tag')
require('./tags/loading-indicator.tag')

require('./tags/simple-board.tag')

//TODO: This should be in separate files, huh? 
const reducer = function (state = { workitems: [] }, action) {
  switch (action.type) {
    case 'WORKITEMS_LOADED':
      return Object.assign({}, state, { workitems: action.data })
    case 'TOGGLE_LOADING':
      return Object.assign({}, state, { isLoading: action.data })
    default:
      return state
  }
}

const createStoreWithMiddleware = redux.compose(
  redux.applyMiddleware(thunk)
)(redux.createStore)
const reduxStore = createStoreWithMiddleware(reducer)

document.addEventListener('DOMContentLoaded', () => {
  riot.mount('simple-board', { store: reduxStore })
})