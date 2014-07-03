Rails.application.routes.draw do
  #Create
  get '/new_bookmark' => 'application#new'
  get '/create_bookmark' => 'application#create'
  
  #Read
  get '/bookmarks/:id' => 'application#show'
  
  #Update
  get '/bookmarks/:id/edit' => 'application#edit'
  
  #Delete
end
