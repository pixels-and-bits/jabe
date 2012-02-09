Dummy::Application.routes.draw do
  root :to => 'home#index'
  mount Jabe::Engine => "/jabe"
end
