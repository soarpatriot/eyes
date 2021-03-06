Rails.application.routes.draw do
  resources :routings
  resources :timelines
  resources :collect_criterions
  #require 'sidekiq/web'
  #devise_for :admins
  #devise_for :users

  #mount Sidekiq::Web => '/admin/sidekiq'

  resources :collects do 
    member do 
      get 'timeline'
    end
  end
  resources :criterions
  resources :commissions
  resources :areas do 
    collection do 
      get 'export'
      get 'export_detail'
    end
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  resources :stations do 
    member do 
      get 'area'
    end
    collection do 
      get 'export'
    end
  end
  resources :cities do 
    member do 
      get 'map'
    end
  end
  patch '/photos' => 'photos#upload'
  resources :photos, :only => [:index, :create, :destroy, :update] do
    member do
      post 'cover'
    end

  end
  resources :users do 
    member do 
      get 'posts'
    end
  end
  root 'home#index'
  get  '/operate' => 'home#operate'
  post '/import' => 'home#import'   
  get '/clear' => 'home#clear'   


  authenticated :admin do
    root "admin/keys#index", as: "admin_root"
  end
  authenticated :users do
    root "stations#index", as: "users_root"
  end


  namespace :admin do 
    resources :keys
    resources :stations do 
      collection do 
        get 'syn'
      end 
    end
  end
  mount ApiV1 => "/" 
  mount GrapeSwaggerRails::Engine => '/swagger'
 

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
