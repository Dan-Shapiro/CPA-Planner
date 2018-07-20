Rails.application.routes.draw do
  devise_for :users
  resources :tasks do
  	resources :parts
  end

  root "tasks#index"

  match "tasks/:task_id/parts/:id/mark_complete", :to => "parts#mark_complete", :as => "part_completed", :via => :post
  match "tasks/refresh", :to => "tasks#refresh", :as => "refresh", :via => :post
end
