Rails.application.routes.draw do
  get 'my_articles', to: 'articles#my_articles'
  get 'my_users', to: 'users#my_users'
  get 'my_orders', to: 'orders#my_orders'
  get 'new_article', to: 'articles#new_article'
  post 'create_article', to: 'articles#create_article'
  get 'new_user', to:'users#new_user'
  post 'create_user', to: 'users#create_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
