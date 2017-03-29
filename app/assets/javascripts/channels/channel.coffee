chatBehavior =
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $(".js-messages").append data["message"]

  speak: (message) ->
    @perform "speak", message: message

App.channel = App.cable.subscriptions.create "ChatChannel", chatBehavior
App.brokenChannel = App.cable.subscriptions.create "BrokenChatChannel", chatBehavior
