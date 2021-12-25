Rails.application.routes.draw do
  get 'currency/index'

  get 'message/index'

  get 'message/test'

  get 'signup/index'

  get 'calculator/index'

  post 'qrcode/index'

  get 'qrcode/show'

  post 'signup/show'

  get 'address/show'

  post 'address/index'

  get 'sessions/index' 

  post 'sessions/show'

  root to: 'sessions#index'

  get "message/success"

  get "message/error"
  
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      controller :whatever, path: '/currency/index' do
        match 'post_action', via: [ :post, :options]
      end
    end
  end 

  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      controller :whatever, path: '/message/index' do
        match 'post_action', via: [ :post, :options ]
      end
    end
  end 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named rou