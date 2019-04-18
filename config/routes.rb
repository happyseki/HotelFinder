Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :hotels do
    get 'rooms', on: :member
    get 'rooms/:room_number', to: 'bookings#new', as: "booking_room", on: :member
    get '/bookings', to: 'bookings#index', as: "bookings", on: :member
    post 'rooms/:room_number', to: 'bookings#create', on: :member
    get 'rooms/:room_number/bookings/:id', to: 'bookings#show', as: "show_booking_room", on: :member
    get 'rooms/:room_number/bookings/:id/edit', to: 'bookings#edit', as: "edit_booking_room", on: :member
    patch 'rooms/:room_number/bookings/:id', to: 'bookings#update', as: "update_booking_room", on: :member
    delete 'rooms/:room_number/bookings/:id', to: 'bookings#destroy', as: "destroy_booking_room", on: :member
  end

  root "hotels#home", as:"home"
  resources :users , only:[:new, :create, :edit, :update]
  get "/users/:id/bookings", to: 'bookings#index', as: "bookings"

  get "/signin", to: "sessions#new", as: "signin"
  post "/signin", to: "sessions#create"
  delete "/signout", to: "sessions#destroy", as: "signout"
end
