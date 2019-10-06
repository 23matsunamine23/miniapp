Rails.application.routes.draw do
  root 'messages#index'
  devise_for :users
  get '/messages' => 'messages#index'  #メッセージ投稿画面
  get '/messages/new' => 'messages#new'  #メッセージ投稿画面
  post '/messages' => 'messages#create'  #メッセージ投稿機能
  delete  'messages/:id'  => 'messages#destroy'  #メッセージ削除機能
  get   'messages/:id/edit'  => 'messages#edit'  #メッセージ編集画面
  patch 'messages/:id' => 'messages#update'  #メッセージ編集機能
end
