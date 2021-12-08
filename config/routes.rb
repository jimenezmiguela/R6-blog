Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  # get '/post/:post_id/comments', to: 'comments#index', as: 'post_comments'
  # get '/post/:post_id/comments', to: 'comments#create'
  # get '/post/:post_id/comments/new', to: 'comments#new', as: 'new_post_comment'
  # get '/post/:post_id/comments/:id', to: 'comments#show', as: 'post_comment'
  # get '/post/:post_id/comments/:id/edit', to: 'comments#edit', as: 'edit_post_comment'
  # get '/post/:post_id/comments/:id', to: 'comments#update'
  # get '/post/:post_id/comments/:id', to: 'comments#destroy'

  # get '/comments', to: 'comments#index', as: 'comments'
  # get '/comments', to: 'comments#create'
  # get '/comments/new', to: 'comments#new', as: 'new_comment'
  # get '/comments/:id', to: 'comments#show', as: 'comment'
  # get '/comments/:id/edit', to: 'comments#edit', as: 'edit_comment'
  # get '/comments/:id', to: 'comments#update'
  # get '/comments/:id', to: 'comments#destroy'

  resources :pages

  # get '/pages', to: 'pages#index'
  # post '/pages', to: 'pages#create'
  # # get '/pages/new', to: 'pages#new'#prioritizes over '/pages/:id'
  # get '/pages/new', to: 'pages#new', as: 'new_page'
  # get '/pages/:id', to: 'pages#show', as: 'page'
  # get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  # patch '/pages/:id', to: 'pages#update'
  # delete '/pages/:id', to: 'pages#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
