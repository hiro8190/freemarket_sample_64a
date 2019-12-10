Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  get "registration/index" => "registration#index"
  get "registration/complete" => "registration#complete"
  get "registration/login" => "registration/login"
end
