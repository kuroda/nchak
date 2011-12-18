Nchak::Application.routes.draw do
  devise_for :users

  root :to => 'welcome#index'
  
  resources :tasks, :only => [ :index, :create ] do
    put :finish, :on => :member
    put :unfinish, :on => :member
    get :done, :on => :collection
  end
end
