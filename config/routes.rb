Rails.application.routes.draw do

  root 'page#home'
  devise_for :users, controllers: { registrations: "user_registrations" }

  resources :announcements
  resources :subscriptions
  resources :artists
  resources :albums

  namespace :admin do

    resources :users do
      member do
        post 'announcement'
      end
    end

    resources :songs do
      member do
        post 'announcement'
      end
    end

    resources :albums do
      member do
        post 'announcement'
      end
    end

    resources :artists do
      resources :subscriptions
    end


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

  #--page controller----------------------------
  get("/home", :controller => 'page', :action => 'home')
  get("/breakdown", :controller => 'page', :action => 'breakdown')
  get("/fheader", :controller => 'page', :action => 'fheader')

end
