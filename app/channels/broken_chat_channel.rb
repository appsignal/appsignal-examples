class BrokenChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "broken_chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    raise "KABOOM!"
  end
end
