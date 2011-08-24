BlogImport::Application.routes.draw do
   
  resources :feeds 

  root :to => "Feeds#index"

end
