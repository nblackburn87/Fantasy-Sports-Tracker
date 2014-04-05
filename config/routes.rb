StatTracker::Application.routes.draw do

match('/', {via: :get, to: 'teams#index'})
match('players', {via: :get, to: 'players#index'})
match('players/new', {via: :get, to: 'players#new'})
match('players', {via: :post, to: 'players#create'})
match('players/:id/edit', {via: :get, to: 'players#edit'})
match('players/:id', {via: [:patch, :put], to: 'players#update'})
match('players/:id', {via: :get, to: 'players#show'})
match('players/:id', {via: :delete, to: 'players#destroy'})

match('teams', {via: :get, to: 'teams#index'})
match('teams/new', {via: :get, to: 'teams#new'})
match('teams', {via: :post, to: 'teams#create'})
match('teams/:id/edit', {via: :get, to: 'teams#edit'})
match('teams/:id', {via: [:patch, :put], to: 'teams#update'})
match('teams/:id', {via: :get, to: 'teams#show'})
match('teams/players/:id', {via: :get, to: 'players#show'})
match('teams/:id', {via: :delete, to: 'teams#destroy'})

match('weeks', {via: :get, to: 'weeks#index'})
end
