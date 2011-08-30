BlogImport::Application.routes.draw do
   
  resources :feeds do
    resources :posts 
  end 
  
  root :to => "Feeds#index"

end
