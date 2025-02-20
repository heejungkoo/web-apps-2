Rails.application.routes.draw do
  get("/dice", {:controller => "dice", :action => "index"})
  get("/tacos", {:controller => "tacos", :action => "index"})
  get("/cards", {:controller => "cards", :action => "index"})
  get("/bitcoins", {:controller => "bitcoins", :action => "index"})

  resources "companies"
  # get("/companies", {:controller => "companies", :action => "index"})
  get("/companies/:id", :controller => "companies", :action => "show")
 
  # post("/companies", :controller => "companies", :action => "create")

  resources "contacts"
  # get("/contacts", {:controller => "contacts", :action => "index"})
  # get("/contacts/new", {:controller => "contacts", :action => "new"})
  # get("/contacts/:id", {:controller => "contacts", :action => "show"})
  

  resources "posts"
  # get("/posts", {:controller => "posts", :action => "index"})
end
