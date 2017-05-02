class PhotosController < ApplicationController
  def new_form
    #nothing needed here since links to create_row
    render("photos/new_form.html.erb")
  end

  def create_row
    url = params[:source]
    caption = params[:caption]
    new_photo = Photo.new
    new_photo.source = url
    new_photo.caption = caption
    new_photo.save
    #render("photos/create_row.html.erb")
    redirect_to("/photos")
  end

  def index
    @list_of_all_my_photos = Photo.all
    render("photos/index.html.erb")
  end

  def show
    the_id = params[:id]
    @my_photo = Photo.find(the_id)
    render("photos/show.html.erb")
  end

  def edit_form
    the_id = params[:id]
    @my_photo = Photo.find(the_id)
    render("photos/edit_form.html.erb")
  end

  def update_row
    @the_id = params[:id]
    @url = params[:source]
    @caption = params[:caption]
    update_photo = Photo.find(@the_id)
    update_photo.source = @url
    update_photo.caption = @caption
    update_photo.save
    #render("photos/create_row.html.erb")
    redirect_to("/photos/"+@the_id)
    #render("photos/update_row.html.erb")
  end

  def destroy_row
    destruction = Photo.find(params[:id])
    destruction.destroy
    redirect_to("/photos")
  end

end
