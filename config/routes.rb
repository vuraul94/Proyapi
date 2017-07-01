Rails.application.routes.draw do
  resources :comentarios
  resources :lugars

  get "/lugars/comentarios/:id", to: "lugars#comments"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
