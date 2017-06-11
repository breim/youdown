Rails.application.routes.draw do
  root 'pages#index'
  post '/download', to: 'posts#download'
end
