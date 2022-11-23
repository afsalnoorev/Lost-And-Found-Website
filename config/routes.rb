Rails.application.routes.draw do
  devise_for :users 


  resources :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

   
  
   root "posts#finalshow", as:'home' 

   devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
   resource :user # <= here
   
   

   

  
   


   get 'about' => 'pages#about',as: 'about'

   

   get 'index' => 'posts#index',as: 'index'

   get 'admin_page' => 'pages#admin_page',as: 'admin_page'

   get '/search', to: "posts#search"
   get 'searchf', to:"posts#searchf"


   get "/send_mail" => "welcome#send_mail"

  


   

   resources :posts do

       resources :comments

   end

end
