Rails.application.routes.draw do
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_scope :user do
    get 'users/sign_in' => 'devise/sessions#new'
    get 'users/sign_out' => 'devise/sessions#destroy'
    match 'users/:id', to: 'users#show', as: 'user', via: 'get'
  end

  resources :pits
  



  root to: 'pages#home'
end