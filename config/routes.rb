FunQueue::Application.routes.draw do

  authenticated :user do
    root :to => 'home#subscribe'
    match "stuff" => "home#i_want_stuff"
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  resque_constraint = lambda do |request|
    request.env['warden'].authenticate?
  end

  constraints resque_constraint do
    mount Resque::Server, :at =>  "/resque"
  end

end