# TODO: You should study about resources and restful routes.
# You could easily reduce your routes files in half.
# Everything is using get instead of patch/post/delete which is a
# clear message that you should improve your knowledge of the HTTP verbs
#
# My suggestion is for you to read this guide a couple times:
# http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do

  devise_for :users
  root 'page#home'

  namespace :admin do
    # Songs Admin
    get('/songs/new', { :controller => 'songs', :action => 'new' })
    get('/create_song', { :controller => 'songs', :action => 'create' })
    get('/songs', { :controller => 'songs', :action => 'index' })
    get('/songs/:id', { :controller => 'songs', :action => 'show' })
    get('/songs/:id/edit', { :controller => 'songs', :action => 'edit' })
    get('/update_song/:id', { :controller => 'songs', :action => 'update' })
    get('/delete_song/:id', { :controller => 'songs', :action => 'destroy' })

      # Routes for the Artist resource:
    # CREATE
    get('/artists/new', { :controller => 'artists', :action => 'new' })
    get('/create_artist', { :controller => 'artists', :action => 'create' })

    # READ
    get('/artists', { :controller => 'artists', :action => 'index' })
    get('/artists/:id', { :controller => 'artists', :action => 'show' })

    # UPDATE
    get('/artists/:id/edit', { :controller => 'artists', :action => 'edit' })
    get('/update_artist/:id', { :controller => 'artists', :action => 'update' })

    # DELETE
    get('/delete_artist/:id', { :controller => 'artists', :action => 'destroy' })
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
