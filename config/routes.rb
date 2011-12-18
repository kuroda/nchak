Nchak::Application.routes.draw do
  resources :tasks, :only => [ :index ]
end
