Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home' => 'home#index'
  root 'home#index'
  get '/theloai/:id' => 'theloais#show' ,as: :theloai
  get '/truyen/:id' => 'truyens#show'   ,as: :truyen
  get '/new' =>'new#show'
  get '/all' => 'truyens#all'
  get '/signup'  => 'users#new'
  resources :users
  get '/login'  => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/uptruyen' =>'edittruyens#new'
  
  post 'truyens' =>'edittruyens#create'
  get '/themtheloai' =>'theloais#new'
  resources :theloais
  get '/edit' =>'edittruyens#list'
  get '/admin' =>'admin#show'
  get '/super' =>'admin#super'
  patch '/truyen/:id' => 'edittruyens#update'
  resources :truyen
  get 'edittruyen/:id/' =>'edittruyens#edit' ,as: :edittruyen
  resources :binhluan
  post '/binhluans' => 'binhluans#create'

end
