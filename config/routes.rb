Rails.application.routes.draw do

  devise_for :users
  root 'page#home'

  namespace :admin do
    # Routes for the Admin Song resource
    resources :songs

    # get('/songs', { :controller => 'songs', :action => 'index' })
    # get('/songs/new', { :controller => 'songs', :action => 'new' })
    # post('/songs', { :controller => 'songs', :action => 'create' })
    # get('/songs/:id', { :controller => 'songs', :action => 'show' })
    # get('/songs/:id/edit', { :controller => 'songs', :action => 'edit' })
    # patch('/songs/:id', { :controller => 'songs', :action => 'update' })
    # delete('/songs/:id', { :controller => 'songs', :action => 'destroy' })

    # Routes for the Admin Artist resource
    resources :artists

    # get('/artists', { :controller => 'artists', :action => 'index' })
    # get('/artists/new', { :controller => 'artists', :action => 'new' })
    # post('/artists', { :controller => 'artists', :action => 'create' })
    # get('/artists/:id', { :controller => 'artists', :action => 'show' })
    # get('/artists/:id/edit', { :controller => 'artists', :action => 'edit' })
    # patch('/artists/:id', { :controller => 'artists', :action => 'update' })
    # delete('/artists/:id', { :controller => 'artists', :action => 'destroy' })
  end

  # Songs Public

  get('/songs', { :controller => 'songs', :action => 'index' })
  get('/songs/:id', { :controller => 'songs', :action => 'show' })


  #--public artist feed----------------------------
  get("/artists/:id", :controller => 'artists', :action => 'show')

  #------------------------------


  get("/feed", :controller => 'page', :action => 'feed')
  get("/following", :controller => 'page', :action => 'following')
  get("/home", :controller => 'page', :action => 'home')
  get("/show", :controller => 'page', :action => 'show')
  get("/singnup", :controller => 'page', :action => 'singnup')

  #ADMIN
  get("/admin_dashboard", :controller => 'admin', :action => 'admin_dashboard')
  get("/account_manager", :controller => 'admin', :action => 'account_manager')

end
