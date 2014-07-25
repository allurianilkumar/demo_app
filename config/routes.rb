Rails.application.routes.draw do
  
  root to: 'users#sign_in'
  
  resources :contacts
  match "/contacts/", :controller => 'contacts',  :action => 'index' , :via => [:get, :post]
  
  resources :users do 
    collection do 
      get 'sign_in'
      get 'sign_up'
      post 'valid_user'
    
    resources :courses do
    end
    
    resources :admins  do
    end
    
    resources :gadgets,:except => :delete
      
      resources :users_admin do
        collection do
          get 'sign_out'
        end
      end

    end

  end
end 
