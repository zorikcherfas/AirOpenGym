Rails.application.routes.draw do

  get 'pages/home'
  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
             controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}


   resources :users, only: [:show]
   resources :rooms, except: [:edit] do
     member do
       get 'listing'
       get 'pricing'
       get 'description'
       get 'photo_upload'
       get 'amenities'
       get 'location'
     end
   end
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
