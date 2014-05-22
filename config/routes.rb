Rails.application.routes.draw do

resources :users do
  resources :posts do
    resources :comments
  end
end

resources :sessions

root to: "users#new"

# get "/users/new" => "users#new"

# post "/users" =>"users#create"

# get "/users/all" => "users#index"

get "/log_in" => "sessions#new", :as => "log_in"

get "/log_out" => "sessions#destroy", :as => "log_out"

get "/sign_up" => "users#new", :as => "sign_up"

# get "/users/login" => "users#login"

# post "/users/login" => "sessions#new"

# get "/users/logout" => "users#logout"

# post "/users/logout" => "users#process_logout"

# get "/posts" => "posts#index"

# get "/posts/new" => "posts#new"

# post "/posts" => "posts#create"

# get "/posts/:id" => "posts#show" :as :post

# get "/posts/:id/edit" => "posts#edit", as: :edit_post

# # renders a NEW post form
# get "/posts/new" => "posts#new"

# # this processes the form input
# post "/posts" => "posts#create"

end
