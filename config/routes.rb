Rails.application.routes.draw do
  root to: 'citizens#home'
  resources :citizens, except: %i[index show destroy]
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
