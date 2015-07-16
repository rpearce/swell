Rails.application.routes.draw do
  namespace :api do
    with_options except: [:new, :edit] do |r|
      r.resources :surfers
      r.resources :competitions
      r.resources :entrants
    end
  end
end
