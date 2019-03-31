Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
  get "/products" => "products#index"
  get "/products/new" => "products#new"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do 
    get "/products" => "products#index"
    post "/products" => "products#create"
    get "products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
    get "/suppliers" => "suppliers#index"
    post "/suppliers" => "suppliers#create"
    get "suppliers/:id" => "suppliers#show"
    patch "/suppliers/:id" => "suppliers#update"
    delete "/suppliers/:id" => "suppliers#destroy"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"
    get "/orders" => "orders#index"
    post "/orders" => "orders#create"
    get "orders/:id" => "orders#show"
    patch "/orders/:id" => "orders#update"
    delete "/orders/:id" => "orders#destroy"
    post "/carted_products" => "carted_products#create"
    get "/carted_products" => "carted_products#index"
    get "carted_products/:id" => "carted_products#show"
    patch "/carted_products/:id" => "carted_products#update"
    delete "/carted_products/:id" => "carted_products#destroy"

  end
end

