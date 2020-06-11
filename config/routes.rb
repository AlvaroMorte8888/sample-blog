Rails.application.routes.draw do 
  get 'home/index'
  get '/' => 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'
  resources :about
  resource :terms, only: [:new, :create]
  resource :contacts, only: [:new, :create], path_names: {:new => ''}
  resources :articles do 
    resources :comments
  end  
end
