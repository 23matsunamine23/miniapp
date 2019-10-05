Rails.application.routes.draw do
  root 'messages#index'
  devise_for :users
  get '/messages' => 'messages#index'  #メッセージ投稿画面
  get '/messages/new' => 'messages#new'  #メッセージ投稿画面
  post '/messages' => 'messages#create'  #メッセージ投稿機能
end
