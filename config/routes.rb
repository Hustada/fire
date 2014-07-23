Rails.application.routes.draw do
  
  devise_for :users
  devise_scope :user do
    get 'users/sign_in' => 'devise/sessions#new'
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
  resources :user, :controller => "user"
  root to: 'pages#home'
end
