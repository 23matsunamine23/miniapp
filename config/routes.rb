Rails.application.routes.draw do
  devise_for :users
  get 'messages' => 'messages#index'  #メッセージ投稿画面
  get 'messages/new' => 'messages#new'  #メッセージ投稿画面

end
