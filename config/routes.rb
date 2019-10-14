Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles, only: [:index, :show, :new, :create, :edit, :update]
  #N/B Where was the resources routing scheme above written that is creating a conflict
  #when a 'rake routes' is ran?
  #Ans: I had the lines below which were doing the same thing
  # get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  # patch 'articles/:id', to: 'articles#update'
end
