Jabe::Engine.routes.draw do

  root :to => "entries#index"

  match 'feed' => 'feed#index', :format => :xml, :as => 'feed'
  match 'feed/atom.xml' => 'feed#index'

  resources :entries do
    resources :comments
  end

  namespace :admin do
    root :to => 'entries#index'
    resource :settings
    resources :entries
  end

  devise_for :admin,
    # :module => :devise,
    # :sign_out_via => [ :get ],
    :class_name => 'Jabe::Admin',
    :path_names => {
      :sign_in => 'login',
      :sign_out => 'logout'
    }

  match "/:year/:month/:day/:id" => 'entries#show',
    :constraints => {
      :year => /\d{4}/,
      :month => /\d{1,2}/,
      :day => /\d{1,2}/
    }

end
