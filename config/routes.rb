Rails.application.routes.draw do
  get 'sessions/new'
  get 'chatroom/index'
  root 'chatroom#index'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  post 'message', to: 'messages#create'

end

