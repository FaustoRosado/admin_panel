Rails.application.routes.draw do
  resources :courses
  resources :students
  resources :teachers
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
