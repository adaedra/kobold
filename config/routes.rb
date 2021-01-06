Kobold::Application.routes.draw do
  resources :projects, only: %i[show]
end
