Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'trucks#home'
  get 'nearme' => 'trucks#nearme'
  get 'profile/:id' => 'trucks#profile'
  get 'checkin/:id' => 'trucks#checkin', as: :checkin
  get 'checkout/:id' => 'trucks#checkout', as: :checkout
  resources :trucks
end