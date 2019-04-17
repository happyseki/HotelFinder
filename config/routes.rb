Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :hotels do
    get 'rooms', on: :member
    get 'rooms/:room_number', to: 'bookings#new', as: "booking_room", on: :member
    post 'rooms/:room_number', to: 'bookings#create', on: :member
    get 'rooms/:room_number/bookings/:id', to: 'bookings#show', as: "show_booking_room", on: :member
  end

  root "hotels#home", as:"home"
  resources :users, only:[:new, :create, :edit, :update]
  get "/signin", to: "sessions#new", as: "signin"
  post "/signin", to: "sessions#create"
  delete "/signout", to: "sessions#destroy", as: "signout"
end
