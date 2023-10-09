Rails.application.routes.draw do
  resource :links, only: [:new, :create]

  get '/:short_url', to: 'redirections#index'

  root "links#new"
end
