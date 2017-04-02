<simple-board>
  <loading-indicator loading={this.state.isLoading}></loading-indicator>
  <workitem-list workitems={this.state.workitems}></workitem-list>
  <script>

    const actions = require('../actions.js')
    const store = this.opts.store

    this.on('mount',function(){
      store.dispatch(actions.loadWorkItems())
    })

    store.subscribe(function(){
      this.state = store.getState()
      this.update()
    }.bind(this))
  </script>
</simple-board>