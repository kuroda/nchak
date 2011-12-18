Nchak::Application.routes.draw do
  resources :tasks, :only => [ :index, :create ] do
    put :finish, :on => :member
    put :unfinish, :on => :member
    get :done, :on => :collection
  end
end
