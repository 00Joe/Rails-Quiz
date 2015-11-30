Rails.application.routes.draw do
  resources :questions
  root 'questions#home'
  get 'home' => "questions#home"
end
