Rails.application.routes.draw do
  #devise_for :users
  #root to: "home#index"
  root to: 'users#sign_in'
  # match ':controller(/:action(/:id))',:via => [:get, :post, :delete]
  #resources :contacts,:only => :index
  match "/contacts/", :controller => 'contacts',  :action => 'index' , :via => [:get, :post]
  resources :contacts

  resources :users do 
    collection do 
      get 'sign_in'
      get 'sign_up'
      post 'validUser'
    end
  end

  resources :courses
  
  resources :admins 
  
  resources :gadgets do
    member do
      get 'generatereport'
    end
  end

  resources :users_admin do
    collection do
      get 'sign_out'
    end
  end

end
