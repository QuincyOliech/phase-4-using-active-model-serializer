Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  #movie summary for a single movie
  get '/movies/:id/summary', to: 'movies#summary'

  #render the full collection of movies
  get '/movie_summaries', to: 'movies#summaries'
  
end
