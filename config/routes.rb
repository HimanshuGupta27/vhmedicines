Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
                     sessions: 'users/sessions',
                     registrations: 'users/registrations',
                     passwords: 'users/passwords',
                     confirmations: 'users/confirmations'
                   }, path: '/', path_names: { sign_in: 'sign_in', sign_out: 'sign_out',registration: 'register' }
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get '/sign_in', to: 'users/sessions#new'
    get '/sign_out', to: 'users/sessions#destroy'
    get '/sign_up', to: 'users/registrations#new'
    get '/register', to: 'users/registrations#new'
  end

  root 'home#index'
end
