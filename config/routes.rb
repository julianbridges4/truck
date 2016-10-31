Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'trucks#home'
  get 'signup' => 'users#new'
  get 'nearme' => 'trucks#nearme'
  get 'profile' => 'trucks#profile'
  get 'checkin' => 'trucks#checkin'
  resources :trucks
end