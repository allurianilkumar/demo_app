Rails.application.routes.draw do
  resources :musics

root to: 'users#index'
devise_for :users
 resources :users do 
  collection do 
    get 'sign_in'
    get 'sign_up'
    post 'valid_user'
  end
end
resources :contacts,:only => [:new,:create,:index]
match "/contacts/", :controller => 'contacts',:action => 'index' , :via => [:get, :post]
resources :courses ,:only => [:index,:new,:create,:show,:edit,:update,:destroy]
resources :gadgets,:except => :delete
resources :users_admin do
  collection do
    get 'sign_out'
    end
  end
end 
