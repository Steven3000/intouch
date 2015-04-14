Rails.application.routes.draw do

  root 'page#home'
  devise_for :users

  resources :announcements
  resources :subscriptions

  namespace :admin do
    # Songs Admin
    # get('/songs', { :controller => 'songs', :action => 'index' })
    # get('/songs/new', { :controller => 'songs', :action => 'new' })
    # post('/songs', { :controller => 'songs', :action => 'create' })
    # get('/songs/:id', { :controller => 'songs', :action => 'show' })
    # get('/songs/:id/edit', { :controller => 'songs', :action => 'edit' })
    # patch('/songs/:id', { :controller => 'songs', :action => 'update' })
    # delete('/songs/:id', { :controller => 'songs', :action => 'destroy' })
    resources :songs

      # Routes for the Artist resource:

    # get('/artists', { :controller => 'artists', :action => 'index' })
    # get('/artists/new', { :controller => 'artists', :action => 'new' })
    # post('/artists', { :controller => 'artists', :action => 'create' })
    # get('/artists/:id', { :controller => 'artists', :action => 'show' })
    # get('/artists/:id/edit', { :controller => 'artists', :action => 'edit' })
    # patch('/artists/:id', { :controller => 'artists', :action => 'update' })
    # delete('/artists/:id', { :controller => 'artists', :action => 'destroy' })
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
