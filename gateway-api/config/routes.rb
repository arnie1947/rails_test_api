Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/login', to: 'users#login', via: 'post'
  namespace 'api' do
    resources :source_providers, only: [:index,:show]
    resources :courses, only: [:index]
  end
  match '/api/courses/history/', to: 'api/courses#history', via: 'get'
end
