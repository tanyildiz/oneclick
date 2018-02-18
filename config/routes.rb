Rails.application.routes.draw do
  get 'tags/create'

  get 'tags/new'

  get 'tags/edit'

  get 'tags/update'

  get 'tags/destroy'

  get 'tags/show'

  get 'tags/index'

  resources :homes
  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
