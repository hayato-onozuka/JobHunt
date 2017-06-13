Rails.application.routes.draw do

  	post "/event_calendars/create" => "event_calendars#create"
  	get '/event_calendars' => "event_calendars#new" , as:"calendars"

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :notes, only: [:show, :create, :edit, :update, :destroy]

  root 'home#top'
  get '/about' => 'home#about'
end
