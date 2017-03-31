module.exports = {
  loadWorkItems
}

function loadWorkItems() {
  return function (dispatch, getState) {
    dispatch(toggleLoading(true))
    
    const request = new XMLHttpRequest();
    request.open('GET', 'http://localhost:3000/issues', true);
    request.onload = function () {
      if (request.status >= 200 && request.status < 400) {
        const data = JSON.parse(request.responseText)
        dispatch(workitemsLoaded(data))
      }
      dispatch(toggleLoading(false))
    }
    
    setTimeout(function () { request.send()  }, 2000)
  }
}

function workitemsLoaded(workitems) {
  return { type: 'WORKITEMS_LOADED', data: workitems }
}

function toggleLoading(isLoading) {
  return { type: 'TOGGLE_LOADING', data: isLoading }
}