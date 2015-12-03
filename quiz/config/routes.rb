Rails.application.routes.draw do
  root 'questions#home'
  resources :questions
end
