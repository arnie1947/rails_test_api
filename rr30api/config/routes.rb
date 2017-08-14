Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'courses/', to: 'course_results#index', via: 'get'
  match 'courses/history/', to: 'course_results#history', via: 'get'
  jsonapi_resources :source_providers, only: [:index, :show]
  jsonapi_resources :course_results, only: [:index,:history]
end
