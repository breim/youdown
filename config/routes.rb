Rails.application.routes.draw do
  root 'pages#index'
  post '/download', to: 'pages#download'
end
