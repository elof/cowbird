Cowbird::Application.routes.draw do  
 root :to => 'calc#index'
# resources :availability, :car, :space, :skill

 get  '/start' => 'calc#start'
 post '/calc'  => 'calc#calc'
 get  '/money' => 'calc#money' ,as: 'money'
 post  '/create' => 'calc#create'
 get '/done' => 'calc#done' , as: 'done'
end
