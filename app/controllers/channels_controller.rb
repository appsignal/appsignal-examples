class ChannelsController < ApplicationController
  def show
    @messages = Message.all
  end

  def broken
    @messages = Message.all
  end
end
