Openmicrosite::Application.routes.draw do

  # Home
  root :to => 'pages#preregistration'

  # Live Webinar
  #root :to => 'pages#live'

  # Authentication
  devise_for :admins
  devise_for :users

  # Static pages
  get 'home' => 'pages#home'
  get 'homenew' => 'pages#homenew'
  get 'homenew-2' => 'pages#homenew-2'
  get 'live' => 'pages#live'
  get 'live-1' => 'pages#live-1'
  get 'live-2' => 'pages#live-2'
  get 'live-3' => 'pages#live-3'
  get 'archive' => 'pages#archive'
  get 'holding' => 'pages#holding'
  get 'login' => 'pages#login'
  get 'evaluation' => 'pages#evaluation'
  get 'interactive' => 'pages#interactive'
  get 'help' => 'pages#help'
  # get 'pi' => 'pages#pi'

  # Feedback/submissions
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match 'feedback' => 'feedback#new', :as => 'feedback', :via => :get
  match 'feedback' => 'feedback#create', :as => 'feedback', :via => :post

  # Interactive/submissions
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match 'interactive' => 'interactive#new', :as => 'interactive', :via => :get
  match 'interactive' => 'interactive#create', :as => 'interactive', :via => :post
end
