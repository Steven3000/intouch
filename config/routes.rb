Rails.application.routes.draw do

  root 'page#home'



  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
                   controllers: {omniauth_callbacks: "omniauth_callbacks"}

# devise_for :users, controllers: { registrations: "user_registrations" }



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

   match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
   match '/auth/failure', to: redirect('/'), via: [:get, :post]
   match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

end
