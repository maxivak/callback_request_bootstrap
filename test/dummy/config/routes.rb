Rails.application.routes.draw do

  mount CallbackRequestBootstrap::Engine => "/callback"

  get 'debug/index'

end
