Nchak::Application.routes.draw do
  resources :tasks, :only => [ :index, :create ] do
    put :finish, :on => :member
  end
end
