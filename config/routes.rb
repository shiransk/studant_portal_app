Rails.application.routes.draw do

  get '/resumes/:id', to: 'resumes#show'
  get '/resumes/:id/edit', to: 'resumes#edit'
  patch '/resumes/:id', to: 'resumes#update'

 

end
