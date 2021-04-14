Rails.application.routes.draw do
  get "/boats" => "boats#index"
  get "/boats/new" => "boats#create"
  get "/boats/:id" => "boats#show"
end
