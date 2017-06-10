Rails.application.routes.draw do


  

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :notes, only: [:show, :create, :edit, :update, :destroy]

  root 'home#top'
  get '/about' => 'home#about'

  get '/event_calendars' => "event_calendars#index" , as: "calendars"
end
