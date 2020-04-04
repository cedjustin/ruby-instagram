Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "sessions#new"
  resources :sessions
  resources :users
  resources :posts do
    collection do
      post :confirm
    end
    member do
      put "like" => "posts#upvote"
      put "unlike" => "posts#downvote"
    end
  end
end
