Rails.application.routes.draw do

	get '/event_calendars' => "event_calendars#index" , as: "calendars"
  	post "/event_calendars/create" => "event_calendars#create"

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :notes, only: [:show, :create, :edit, :update, :destroy]

  root 'home#top'
  get '/about' => 'home#about'
end
