$(document).on "keypress", "[data-behavior~=channel_speaker]", (event) ->
  if event.keyCode is 13 # return/enter = send
    App.channel.speak event.target.value
    event.target.value = ""
    event.preventDefault()

$(document).on "keypress", "[data-behavior~=broken_channel_speaker]", (event) ->
  if event.keyCode is 13 # return/enter = send
    App.brokenChannel.speak event.target.value
    event.target.value = ""
    event.preventDefault()
