Rails.application.routes.draw do
  resources :call_charges
  resources :call_records
  resources :user_accounts
  resources :fnf_items
  resources :products
  resources :services
  resources :bonus_accounts
  resources :accumulators
  resources :short_codes
  resources :isd_tariffs
  resources :communities
  resources :offers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
