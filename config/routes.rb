Rails.application.routes.draw do
  
  root "application#hello"

   
   get '/home' => 'static_pages#home'
   get '/help'	=>	'static_pages#help'
   get '/about'	=> 'static_pages#about'
   resources :users
   

   get '/signup' =>'users#new'
  

end
