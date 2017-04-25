Rails.application.routes.draw do

#CREATE
  get("/new", { :controller => "photos", :action => "new_form" })
  get("/create_photo", { :controller => "photos", :action => "create_row" })

#READ

  get("/photos/:theid", { :controller => "photos", :action => "show" })
  get("/photos/", { :controller => "photos", :action => "index" })
  get("/", { :controller => "photos", :action => "index" })

#UPDATE

  get("/photos/:theid/edit", { :controller => "photos", :action => "edit_form" })
  get("/update_row/:theid", { :controller => "photos", :action => "update_row" })

#DELETE


  get("/photos/:theid/delete", { :controller => "photos", :action => "delete_photo" })




  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
