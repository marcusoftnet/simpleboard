<simple-board>
  <loading-indicator loading={this.state.isLoading}></loading-indicator>
  <workitem-list workitems={this.state.workitems}></workitem-list>
  <script>

    var actions = require('../actions.js')
    var store = this.opts.store

    this.on('mount',function(){
      store.dispatch(actions.loadWorkItems())
    })

    store.subscribe(function(){
      this.state = store.getState()
      this.update()
    }.bind(this))
  </script>
</simple-board>