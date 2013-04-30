TddIntro::Application.routes.draw do
  resources :tasks, only: [:index, :new, :create] do
    resources :completions, only: [:create]
  end

  root to: 'tasks#index'
end
