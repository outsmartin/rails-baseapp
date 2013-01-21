Baseapp::Application.routes.draw do

  get "about", to: "static_pages#about"

  root to: "static_pages#welcome"
end
