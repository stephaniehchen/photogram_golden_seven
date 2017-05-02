Rails.application.routes.draw do
  #CREATE
  get("/photos/new", {:controller => "photos", :action => "new_form"})
  get("/photos/create_photo", {:controller => "photos", :action => "create_row"})
  #READ
  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:id", {:controller => "photos", :action => "show"})
  #UPDATE
  get("/photos/update_photo/:id", {:controller => "photos", :action => "update_row"})
  get("/photos/:id/edit", {:controller => "photos", :action => "edit_form"})
  get("/photos/delete_photo/:id", {:controller => "photos", :action => "destroy_row"})

end
