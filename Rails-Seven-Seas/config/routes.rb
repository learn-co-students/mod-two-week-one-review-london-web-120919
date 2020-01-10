Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/', to: 'seas#welcome'
    
    get '/seas', to: 'seas#index'

    get '/seas/new', to: 'seas#new'

    get '/seas/:id', to: 'seas#show', as: 'sea'

    post '/seas', to: 'seas#create'

    get '/seas/:id/edit', to: 'seas#edit'

    patch 'seas/:id', to: 'seas#update'

    delete 'seas/:id/delete', to: 'seas#index', as: 'sea_delete'

end
