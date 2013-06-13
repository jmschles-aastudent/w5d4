NewsApp::Application.routes.draw do
  resources :newspapers do
    resources :subscription_plans, :only => [:create, :new]
  end
end
