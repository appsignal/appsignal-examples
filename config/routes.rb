Rails.application.routes.draw do
  get "channels/show"
  get "channels/broken"
  resource :messages
  mount ActionCable.server => "/cable"
end
