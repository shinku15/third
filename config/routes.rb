Rails.application.routes.draw do
  
  root "application#hello"

   resources :static_pages
   get '/home' => 'static_pages#home'
   get '/help'	=>	'static_pages#help'
   get '/about'	=> 'static_pages#about'
   

   get '/signup' =>'users#new'
  

end
