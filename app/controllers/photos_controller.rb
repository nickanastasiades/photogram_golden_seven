class PhotosController < ApplicationController

def show
  p = Photo.find(params["theid"])
  @thephotourl = p.source
  @thecaption = p.caption
  @createdat = p.created_at

render("/photos/show.html.erb")
end

def index
  @all_photos = Photo.all

render("/photos/index.html.erb")
end

def new_form
render("/photos/new_form.html.erb")
end

end
