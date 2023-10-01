Rottenpotatoes::Application.routes.draw do
  resources :moviegoers
  resources :movies do
    resources :reviews
  end
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get 'moviegoer/:id/reviews' => 'moviegoers#reviews', :as => 'moviegoer_reviews'
  post '/movies/search_tmdb' => 'movies#search_tmdb', :as => 'search_tmdb'
  get  'auth/:provider/callback' => 'sessions#create'
  get  'auth/failure' => 'sessions#failure'
  post 'logout' => 'sessions#destroy', :as => 'logout'
  post 'auth/google_oauth2', :as => 'login'
  get  '/login' => 'moviegoers#login', :as => 'login_page'
end
