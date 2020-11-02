Rails.application.routes.draw do
    resources :artists, only: [:show, :index, :new, :create]
    resources :instruments, only :index
    resources :artist_instruments, only: [:new, :create]
end
