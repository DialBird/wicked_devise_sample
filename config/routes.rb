Rails.application.routes.draw do
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    omniauth_callbacks: 'users/omniauth_callbacks',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }

  devise_scope :user do
    patch 'users/confirmation', to: 'users/confirmations#confirm'

    unauthenticated do
      as :user do
        root 'devise/sessions#new'
      end
    end
    root 'home#index'
  end
end
