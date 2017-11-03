Rails.application.routes.draw do
  get 'home/index'

  devise_for :users, controllers: {  :registrations => "users/registrations" }

  # devise_scope :user do
  #   authenticated :user do
  #     root 'home#index', as: :authenticated_root
  #   end
  #
  #   unauthenticated do
  #     root 'devise/registrations#new', as: :unauthenticated_root
  #   end
  # end

  get 'vip' => 'home#new_user_page', as: :vip

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
