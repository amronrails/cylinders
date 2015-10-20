Rails.application.routes.draw do

  root "egypt#index"

  get 'companies/:permalink', :to => "egypt#companies"

  get 'compare', :to => "egypt#compare"
  get 'compare/:permalink1', :to => "egypt#compare"
  get 'compare/:permalink1/:permalink2', :to => "egypt#compare"
  get 'compare/:permalink1/:permalink2/:permalink3', :to => "egypt#compare"
  get 'compare/:permalink1/:permalink2/:permalink3/:permalink4', :to => "egypt#compare"

  get 'companies', :to => "egypt#newcars"

  get 'vehicles/:permalink', :to => "egypt#vehicles"

  get 'motors/:permalink', :to => "egypt#motors"

  get 'dealers/:permalink', :to => "egypt#dealers"

  get 'admin', :to => "access#index"

  get 'admin/brands', :to => "brands#index"

  resources :agents

  resources :cars

  resources :admin_user

  resources :car_prices

  resources :models

  resources :brands

  match ':controller(/:action(/:id))', :via => [:get,:post]

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
