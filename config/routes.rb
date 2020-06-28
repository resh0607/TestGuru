Rails.application.routes.draw do

  root 'tests#index'

  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' },
    path: :gurus, path_names: { sing_in: :login, sign_out: :logout }

  resources :tests, only: :index do
    member do
      post :start
    end
  end

  resources :test_passages, only: %i[show update] do
    member do
      get :result
      post :gist
    end
  end

  resources :feedbacks, only: %i[new create]

  namespace :admin do
    resources :gists, only: :index
    resources :tests do
      patch :update_inline, on: :member
      
      resources :questions, shallow: true, except: :index do
        resources :answers, shallow: true, except: :index
      end
    end
  end
end
