class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    message = Message.create! :content => data["message"]
    rendered_message = ApplicationController.renderer.render(
      partial: "messages/message",
      locals: { message: message }
    )
    ActionCable.server.broadcast "chat_channel", message: rendered_message
    # raise "foo"
  end
end
