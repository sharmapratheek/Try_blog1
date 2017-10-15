Rails.application.routes.draw do
 get '/pages',to: 'pages#index'
 post '/pages',to: 'pages#create'
 get '/pages/new',to: 'pages#new' ,as:'new_page'
 get 'pages/:id',to: 'pages#show',as: 'page'
 get 'page/:id/edit',to: 'pages#edit',as:'edit_page'
 patch '/pages/:id',to: 'pages#create'
 delete 'pages/:id',to: 'pages#destroy',as:'destroy_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
