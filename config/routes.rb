Rails.application.routes.draw do

  get '/students/:id', to: 'students#show'
  
  get '/students/:id/edit', to: 'resumes#edit'
  patch '/students/:id', to: 'resumes#update'
 

end
