Rails.application.routes.draw do
  

  mount Lines::Engine => "/blog"
  resources :widgets

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  root 'landing#index'

  # All routes
  get "lendersignup", to: 'lenders#new'
  post "lendersignup", to: 'lenders#create'

  get "sign_up" => 'sign_up#index', :as => :sign_up_index
  
  get "signups" => 'signups#index', :as => :signups_index

  get "dashboard" => 'dashboards#dashboard_1', :as => :dashboard_1

  get "app" => 'appviews#index', :as => :appviews_index
  get "app/lender" => 'appviews#lender', :as => :appviews_lender
  get "app/borrower" => 'appviews#borrower', :as => :appviews_borrower

  get "graphs/flot"
  get "graphs/morris"
  get "graphs/rickshaw"
  get "graphs/chartjs"
  get "graphs/chartist"
  get "graphs/peity"
  get "graphs/sparkline"
  get "graphs/c3charts"

  get "metrics" => 'metrics#index', :as => :metrics_index

  get "forms/basic_forms"
  get "forms/advanced"
  get "forms/wizard"
  get "forms/file_upload"

  get "uielements/notification"
  get "uielements/typography"
  get "uielements/icons"
  get "uielements/draggable_panels"
  get "uielements/resizeable_panels"
  get "uielements/buttons"
  get "uielements/video"
  get "uielements/tables_panels"
  get "uielements/tabs"
  get "uielements/notifications_tooltips"
  get "uielements/badges_labels_progress"
  get "uielements/loading_buttons"

  get "gridoptions" => 'gridoptions#index', :as => :gridoptions_index

  get "tables/static_tables"
  get "tables/data_tables"
  get "tables/foo_tables"
  get "tables/jqgrid"

  get "gallery/basic_gallery"
  get "gallery/slick_carusela"
  get "gallery/bootstrap_carusela"

  get "cssanimations" => 'cssanimations#index', :as => :cssanimations_index

  get "" => 'landing#index', :as => :landing_index

  get "landing2" => 'landing#landing_2', :as => :landing_2
  get "austin" => 'landing#landing_2'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :signups, :lenders

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
