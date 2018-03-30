Rails.application.routes.draw do

  devise_for :admins
  get 'profile', to: 'page#profile'

  get 'news', to: 'page#news'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'page#home'
end
