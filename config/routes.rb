Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'upload_student_card', to: 'home#upload_student_card'
end
