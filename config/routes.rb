StatTracker::Application.routes.draw do

match '/', {via: :get, to: 'players#index'}
match 'players', {via: :get, to: 'players#index'}
match 'players/new', {via: :get, to: 'players#new'}
match 'players', {via: :post, to: 'players#create'}
match 'players/:id/edit', {via: :get, to: 'players#edit'}
match 'players/:id', {via: [:patch, :put], to: 'players#update'}
match 'players/:id', {via: :get, to: 'players#show'}
match 'players/:id', {via: :delete, to: 'players#destroy'}
end
