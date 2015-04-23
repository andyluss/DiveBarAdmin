Router.route '/', ->
  @redirect '/admin'

Router.route 'dashboard', ->
  @redirect '/admin'