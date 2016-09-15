Rails.application.routes.draw do

  get '/', to: 'students#index'
  get '/students/sign_up', to: 'students#new'
  post '/students', to: 'students#create'
  
  get '/resumes/:id/edit', to: 'resumes#edit'
  patch '/resumes/:id', to: 'resumes#update'
  get '/resumes/:id', to: 'resumes#show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
 

end
