Rails.application.routes.draw do
  root 'topics#root'

#  get 'my_users', to: 'users#my_users'
#  get 'new_user', to:'users#new_user'
#  post 'create_user', to: 'users#create_user'
#  get 'edit_my_user/:id', to: 'users#edit_my_user'
#  post 'edit_my_user/modify_user', to: 'users#modify_user'
  get 'edit_my_users', to: 'users#edit_my_users'
  post 'modify_my_users', to: 'users#modify_my_users'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Articles
  #get 'my_articles', to: 'articles#my_articles'
  #get 'new_article', to: 'articles#new_article'
#  get 'my_article/:id', to: 'articles#my_article'
  #get 'edit_my_article/:id', to: 'articles#edit_my_article'
#  post 'edit_my_article/modify_article', to: 'articles#modify_article'
#post 'create_article', to: 'articles#create_article'
  resources :articles do
    resources :comments
  end
  resources :categories
end
