Rails.application.routes.draw do
  get 'my_articles', to: 'articles#my_articles'
  get 'my_users', to: 'users#my_users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
