class PhotosController < ApplicationController

def show
  p = Photo.find(params["theid"])
  @thephotourl = p.source
  @thecaption = p.caption
  @createdat = p.created_at
  @photo_id = p.id

render("/photos/show.html.erb")
end

def index
  @all_photos = Photo.all.order({ :created_at => :desc })

render("/photos/index.html.erb")
end

def new_form
render("/photos/new_form.html.erb")
end

def create_row
  #  Parameters: {"image_url"=>"http://ssnsjn.com", "image_caption"=>"e"}
p = Photo.new
p.source = params["image_url"]
p.caption = params["image_caption"]
p.save

redirect_to("/photos")
end

def edit_form
  @photo = Photo.find(params["theid"])
  render("/photos/edit_form.html.erb")
end

def update_row
  p = Photo.find(params["theid"])
  p.source = params["the_source"]
  p.caption = params["the_caption"]
  p.save

redirect_to("/photos")
end

def delete_photo
  p = Photo.find(params["theid"])
  p.destroy

redirect_to("/photos")
end

end
