Rails.application.routes.draw do

#Adding a new piece
  get("/message/new",  {:controller => "message", :action => "new"})
  #adds it to the db
  get("/message/create", {:controller => "message", :action => "create"})

  #page used to edit
  get("/message/:id/edit", {:controller => "message", :action => "edit"})
  #saves the edits
  get("/message/update/:id", {:controller => "message", :action => "update"})

  get("/message/destroy/:id", {:controller => "message", :action => "destroy"})

  get("/messages", {:controller => "message", :action => "index"})




#show page
  get("/message/:id", {:controller => "message", :action => "show"})


end
