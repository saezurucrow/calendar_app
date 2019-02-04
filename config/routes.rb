Rails.application.routes.draw do
  get 'calendars', to: 'calendars#index'
  post 'calendars', to: 'calendars#nextMonth',as: 'calendars/nextMonth'
  post 'calendars', to: 'calendars#preMonth',as: 'calendars/preMonth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'calendars#index'
end
