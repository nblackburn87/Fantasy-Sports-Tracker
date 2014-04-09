StatTracker::Application.routes.draw do

root to: 'teams#index'
resources :players
resources :teams

match('weeks', {via: :get, to: 'weeks#index'})
end
