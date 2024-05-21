Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root "dashboard#show"

  # setting up a custom path for the form view. you could use any name you want
  get 'dashboard_form', to: 'dashboard#form', as: 'dashboard_form'
  
  # setting up custom paths for our form to send and recieve info
  get 'chat', to: 'message#chat'
  post 'chat_post', to: 'message#chat_post'
  # ive set up 2 paths, chat_path and chat_post_path
  # chat_path will trigger the chat method in the message controller to GET the page chat.html.erb for us and display info
  # chat_post_path will trigger the chat_post method in the message controller to send our form and its question to Chat GPT, get the response, store it, and redirect us back to our chat.html.erb page with it
  # a little complicated but it basically lets us refresh the page with the response from out latest question.


  # Defines the root path route ("/")
  # root "posts#index"
end
