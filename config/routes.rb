CallbackRequestBootstrap::Engine.routes.draw do
  resources :requests, except: [:index]

  get 'create_result' =>'requests#create_result', as: :create_result_request
end
