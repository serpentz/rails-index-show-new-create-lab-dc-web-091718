Rails.application.routes.draw do
  resource :coupons , only: [ :index , :create ]

  get '/coupons/:id', to: 'coupons#show', as: 'coupon'
  get '/coupons', to: 'coupons#index'
  get '/coupon/new', to: 'coupons#new', as: 'new_coupon'

end
