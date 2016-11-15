class HomeController < ApplicationController
  def show
    @items = Item.all
  end

  def slow
    sleep 10
  end

  def error
    raise "error"
  end
end
