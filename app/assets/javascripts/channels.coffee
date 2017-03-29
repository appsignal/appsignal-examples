#= require action_cable
#= require_self
#= require_tree ./channels

@App ||= {}
App.able = ActionCable.createConsumer()
