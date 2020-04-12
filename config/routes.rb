Rails.application.routes.draw do
  devise_for :users
  get 'quest_thank/index'
  get 'questionnaire/index'
  get 'calendar/index'
  get 'translations/index'
  get 'tools/index'
  get 'home/index'

  resources :testimonials
  resources :translations
  
  root 'home#index'

end
