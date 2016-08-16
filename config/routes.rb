Rails.application.routes.draw do
  
  get 'sessions/new'

  root "application#hello"

   
   get '/home' => 'static_pages#home'
   get '/help'	=>	'static_pages#help'
   get '/about'	=> 'static_pages#about'

   get    '/login',   to: 'sessions#new'
   post   '/login',   to: 'sessions#create'
   delete '/logout',  to: 'sessions#destroy'
   
   resources :users
   resources :account_activations, only: [:edit]

   get '/signup' =>'users#new'
  

end
