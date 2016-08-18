Rails.application.routes.draw do
  
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

   get '/home' => 'static_pages#home'
   get '/help'	=>	'static_pages#help'
   get '/about'	=> 'static_pages#about'

   get    '/login',   to: 'sessions#new'
   post   '/login',   to: 'sessions#create'
   delete '/logout',  to: 'sessions#destroy'
   
  resources :users do
    member do
      get :following, :followers
    end
  end

   resources :account_activations, only: [:edit]
   resources :password_resets,     only: [:new, :create, :edit, :update]
   resources :microposts,          only: [:create, :destroy]
   resources :relationships,       only: [:create, :destroy]

   get '/signup' =>'users#new'

  root 'application#hello'
  

end
