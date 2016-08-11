Rails.application.routes.draw do

  root 'pages#welcome'

  get 'pages/list', to: "pages#list", as: :pages_list
  get 'pages/advocate', to: "pages#advocate", as: :pages_advocate
  get 'pages/motivation', to: "pages#motivation", as: :pages_motivation
  get 'pages/posting', to: "pages#posting", as: :pages_posting

  get "/session/new", to: "session#new", as: :new_session
  post "/session", to: "session#create", as: :session
  delete "/session", to: "session#destroy"

  post "/users", to: "users#create", as: :users
  get "/users/new", to: "users#new", as: :new_user

  get "/companies", to: "companies#index", as: :companies
  post "/companies", to: "companies#create"
  get "/companies/new", to: "companies#new", as: :new_company
  # get "/companies/:company_id", to: "companies#show", as: :company

  patch "/api/companies/:company_id", to: "api/companies#update"

  post "/companies/:company_id/advocates", to: "advocates#create", as: :company_advocates






 #  Prefix Verb   URI Pattern                    Controller#Action
 #     tools GET    /tools(.:format)               tools#index
 #           POST   /tools(.:format)               tools#create
 #  new_tool GET    /tools/new(.:format)           tools#new
 # edit_tool GET    /tools/:id/edit(.:format)      tools#edit
 #      tool GET    /tools/:id(.:format)           tools#show
 #           PATCH  /tools/:id(.:format)           tools#update
 #           PUT    /tools/:id(.:format)           tools#update
 #           DELETE /tools/:id(.:format)           tools#destroy
# get "/tools", to: "tools#index", as: "tools"

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
