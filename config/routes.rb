Openmicrosite::Application.routes.draw do

  # Home
  root :to => 'pages#home'
  #root :to => 'pages#coming_soon'

  # Live Webinar
  #root :to => 'pages#live'

  # Authentication
  devise_for :admins
  devise_for :users

  # Static pages
  get 'home' => 'pages#home'
  get 'live' => 'pages#live'
  #get 'live_jul_8' => 'pages#live_jul_8'
  #get 'live_jul_16' => 'pages#live_jul_16'
  get 'live_sept_9' => 'pages#live_sept_9'
  get 'archive' => 'pages#archive'
  get 'archive_jul_8' => 'pages#archive_jul_8'
  get 'archive_jul_16' => 'pages#archive_jul_16'
  get 'archive_sept_9' => 'pages#archive_sept_9'
  get 'login' => 'pages#login'
  get 'evaluation' => 'pages#evaluation'
  get 'firstinteractive' => 'pages#firstinteractive'
  #get 'secondinteractive' => 'pages#secondinteractive'
  get 'help' => 'pages#help'
  #get 'coming_soon' => 'pages#coming_soon'

  # Feedback/submissions
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match 'feedback' => 'feedback#new', :as => 'feedback', :via => :get
  match 'feedback' => 'feedback#create', :as => 'feedback', :via => :post

  # First Interactive/submissions
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match 'firstinteractive' => 'firstinteractive#new', :as => 'firstinteractive', :via => :get
  match 'firstinteractive' => 'firstinteractive#create', :as => 'firstinteractive', :via => :post

  # Second Interactive/submissions
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match 'secondinteractive' => 'secondinteractive#new', :as => 'secondinteractive', :via => :get
  match 'secondinteractive' => 'secondinteractive#create', :as => 'secondinteractive', :via => :post
end
