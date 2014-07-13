Rails.application.routes.draw do

  resources :travels do
    resources :days, name_prefix: 'travels_'
  end

  resources :days do
    resources :travel_points, name_prefix: 'days_'  
  end

  resources :travel_points do
    resources :articles, name_prefix: 'travel_points_'
  end

  resources :articles do
    resources :pictures, name_prefix: 'article_'
  end
 
  root 'travels#index'
end
