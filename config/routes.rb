Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'questions#ask'
  # get 'about', to: 'pages#about'
  get "answer", to: "questions#answer"
end
