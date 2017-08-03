Rails.application.routes.draw do
  root 'blogs#index'

  resources :blogs do
    resources :replies, only: [:create]
  end
  get '/like', to: 'blogs#like'

end
