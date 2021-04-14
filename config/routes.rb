Rails.application.routes.draw do
  get "/boats" => "boats#index"
  get "/boats/new" => "boats#new"
  get "/boats/:id" => "boats#show"
  post "/boats" => "boats#create"
  patch "/boats/:id" => "boats#update"
  get "/boats/:id/edit" => "boats#edit"
end
