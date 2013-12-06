Sas::Application.routes.draw do
  resources :users
  resource :session, :only => [:create, :destroy, :new]
end
