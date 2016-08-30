Rails.application.routes.draw do
  root 'static_pages#home'

  resources :products do
    resources :bids do
      post '/accept', to: 'bids#accept_bid'
    end
  end
end
