NewsApp::Application.routes.draw do
  resources :newspapers do
    resources :subscription_plans, :only => [:create, :new]
  end

  resources :users, :only => [:new, :create, :show]
  resource :session, :only => [:new, :create, :destroy]
end
