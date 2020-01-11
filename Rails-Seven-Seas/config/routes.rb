Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :seas, except: :destroy

  delete 'seas/:id/delete', to: 'seas#destroy', as: 'sea_delete' 


end
