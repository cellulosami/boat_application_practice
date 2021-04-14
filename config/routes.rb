Rails.application.routes.draw do
  get "/boats" => "boats#index"
  get "/boats/:id" => "boats#show"
end
