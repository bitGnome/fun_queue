FunQueue::Application.routes.draw do

  authenticated :user do
    root :to => 'home#subscribe'
    match "stuff" => "home#i_want_stuff"
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end