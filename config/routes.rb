Rails.application.routes.draw do

 root 'page#home'

  # Routes for the Song resource:
  # CREATE
  get('/songs/new', { :controller => 'songs', :action => 'new' })
  get('/create_song', { :controller => 'songs', :action => 'create' })

  # READ
  get('/songs', { :controller => 'songs', :action => 'index' })
  get('/songs/:id', { :controller => 'songs', :action => 'show' })

  # UPDATE
  get('/songs/:id/edit', { :controller => 'songs', :action => 'edit' })
  get('/update_song/:id', { :controller => 'songs', :action => 'update' })

  # DELETE
  get('/delete_song/:id', { :controller => 'songs', :action => 'destroy' })
  #------------------------------

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
  #------------------------------

get("/artistfeed", :controller => 'page', :action => 'artistfeed')
get("/feed", :controller => 'page', :action => 'feed')
get("/following", :controller => 'page', :action => 'following')
get("/home", :controller => 'page', :action => 'home')
get("/show", :controller => 'page', :action => 'show')
get("/singnup", :controller => 'page', :action => 'singnup')

#ADMIN
get("/admin_dashboard", :controller => 'admin', :action => 'admin_dashboard')
get("/account_manager", :controller => 'admin', :action => 'account_manager')




  # Routes for the Feed resource:
  # CREATE
  get('/feeds/new', { :controller => 'feeds', :action => 'new' })
  get('/create_feed', { :controller => 'feeds', :action => 'create' })

  # READ
  get('/feeds', { :controller => 'feeds', :action => 'index' })
  get('/feeds/:id', { :controller => 'feeds', :action => 'show' })

  # UPDATE
  get('/feeds/:id/edit', { :controller => 'feeds', :action => 'edit' })
  get('/update_feed/:id', { :controller => 'feeds', :action => 'update' })

  # DELETE
  get('/delete_feed/:id', { :controller => 'feeds', :action => 'destroy' })
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
