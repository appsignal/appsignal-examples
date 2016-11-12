Rails.application.routes.draw do
  get "/" => "home#show"
  get "/slow" => "home#slow"
  get "/error" => "home#error"
end
