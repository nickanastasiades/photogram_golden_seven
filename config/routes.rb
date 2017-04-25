Rails.application.routes.draw do

#CREATE
  get("/new", { :controller => "photos", :action => "new_form" })

#READ

  get("/photos/:theid", { :controller => "photos", :action => "show" })
  get("/photos/", { :controller => "photos", :action => "index" })
  get("/", { :controller => "photos", :action => "index" })

#UPDATE

#EDIT


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
