Rails.application.routes.draw do
  get 'home/index'

  get 'products/create'

  get 'products/new'

  get 'products/edit'

  get 'products/update'

  get 'products/destroy'

  get 'products/show'

  get 'products/index'

  get 'users/create'

  get 'users/new'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'users/show'

  get 'users/index'

  get 'categories/create'

  get 'categories/new'

  get 'categories/edit'

  get 'categories/update'

  get 'categories/destroy'

  get 'categories/index'

  get 'categories/show'

  get 'home/login'

  get 'home/admin'

  get 'home/contact'

  get 'tags/create'

  get 'tags/new'

  get 'tags/edit'

  get 'tags/update'

  get 'tags/destroy'

  get 'tags/show'

  get 'tags/index'

  resources :tags
  resources :products
  resources :users
  resources :categories
  get 'home/index'
  get 'home' => 'home#index'
  get 'contact'=> 'home#contact'
  get 'login' => 'home#login'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
