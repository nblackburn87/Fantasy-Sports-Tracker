StatTracker::Application.routes.draw do

match('players', {via: :get, to: 'players#index'})
end
