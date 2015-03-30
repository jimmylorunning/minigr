Rails.application.routes.draw do
  devise_for :readers
  root to: "home#index"
end
