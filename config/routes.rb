Nchak::Application.routes.draw do
  root :to => 'welcome#index'
  
  devise_for :users
  get 'tasks', :to => 'tasks#index', :as => :user_root

  resources :tasks, :only => [ :index, :create ] do
    put :finish, :on => :member
    put :unfinish, :on => :member
    get :done, :on => :collection
  end
end
