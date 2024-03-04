Rails.application.routes.draw do


  namespace :api do
    namespace :v1 do
      resources :articles
    end
  end

devise_for :users, controllers: { sessions: 'users/sessions' }

  root "articles#welcome"

  resources :articles do
    resources :comments
  end
  get 'welcome', to: 'welcome#index', as: 'welcome'


get '/about_me', to: 'articles#about_me', as: 'about_me'
get '/home', to: 'articles#index', as: 'home'




get 'modern_home', to: 'modern_home#index', as: 'modern_home'
get 'about_me_modern', to: 'modern_home#about_me_modern', as: 'about_me_modern'
get 'modern_articles/new', to: 'modern_home#new_modern_article', as: 'new_modern_article'
get 'show_modern/:id', to: 'modern_home#show_modern', as: 'show_modern'

get 'modern_articles', to: 'modern_articles#index', as: 'modern_articles'
get 'modern_articles/:id', to: 'modern_articles#show', as: 'modern_article'






get 'funny_home', to: 'funny_home#index', as: 'funny_home'
get 'about_me_funny', to: 'funny_home#about_me_funny', as: 'about_me_funny'
get 'new_funny_article', to: 'funny_home#new_funny_article', as: 'new_funny_article'
get 'show_funny/:id', to: 'funny_home#show_funny', as: 'show_funny'






end
