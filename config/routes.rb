Rails.application.routes.draw do
  get 'home/index'

  get "home/account_balance", to: 'home#account_balance', as: 'account_balance'

	get "home/new_internal_transfer_credit", to: 'home#new_internal_transfer_credit', as: 'new_internal_transfer_credit'

	post "home/internal_transfer_credit", to: 'home#internal_transfer_credit', as: 'internal_transfer_credit'

end
