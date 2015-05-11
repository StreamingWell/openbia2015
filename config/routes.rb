Openmicrosite::Application.routes.draw do

  # Home
  root :to => 'pages#preregistration'

  # Live Webinar
  #root :to => 'pages#live'

  # Authentication
  devise_for :admins
  devise_for :users

  # Static pages
  get 'home' => 'pages#archive'
  get 'live' => 'pages#live'
  get 'archive' => 'pages#archive'
  get 'holding' => 'pages#holding'
  get 'login' => 'pages#login'
  get 'evaluation' => 'pages#evaluation'
  get 'help' => 'pages#help'
  # get 'pi' => 'pages#pi'

  # Feedback/submissions
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match 'feedback' => 'feedback#new', :as => 'feedback', :via => :get
  match 'feedback' => 'feedback#create', :as => 'feedback', :via => :post
end
