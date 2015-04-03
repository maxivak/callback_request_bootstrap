Rails.application.routes.draw do

  mount CallbackRequestBootstrap::Engine => "/callback_request_bootstrap"
end
