Rails.application.routes.draw do
  resource :links, only: [:new, :create]

  root "links#new"
end
