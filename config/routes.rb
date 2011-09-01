BlogImport::Application.routes.draw do
   
  resources :feeds 
  resources :posts 
  
  root :to => "Feeds#index"
  match "/auth/:vkontakte/callback" => "Feeds#create"  

end
