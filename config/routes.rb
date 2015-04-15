Rails.application.routes.draw do

  root 'page#home'
  devise_for :users

  resources :announcements
  resources :subscriptions

  namespace :admin do

    resources :songs
    resources :artists
    resources :albums
  end

    resources :artists do
      resources :subscriptions
    end

  # Songs Public
  get('/songs', { :controller => 'songs', :action => 'index' })
  get('/songs/:id', { :controller => 'songs', :action => 'show' })

  # Albums Public
  get('/albums', { :controller => 'albums', :action => 'index' })
  get('/albums/:id', { :controller => 'albums', :action => 'show' })

  # Feed Public
  get('/feed', { :controller => 'feed', :action => 'index' })

  #--public artist feed----------------------------
  get("/artists/:id", :controller => 'artists', :action => 'show')

  get("/home", :controller => 'page', :action => 'home')
  get("/breakdown", :controller => 'page', :action => 'breakdown')

  #ADMIN_other
  get("/admin_dashboard", :controller => 'admin', :action => 'admin_dashboard')
  get("/account_manager", :controller => 'admin', :action => 'account_manager')

end
