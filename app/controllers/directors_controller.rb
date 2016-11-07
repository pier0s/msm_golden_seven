class DirectorsController < ApplicationController

def index

@directors=Director.all

end

def show

@director=Director.find(params[:id])

end


def new_form

end

def create_row

@director = Director.new
@director.name = params[:name]
@director.bio = params[:bio]
@director.dob = params[:dob]
@director.image_url = params[:image_url]
@director.save

  redirect_to("/directors/" + @director.id.to_s)


end

def delete_director

  @director = Director.find(params[:id])
  @director.destroy
  redirect_to("/directors/")

end

def edit_form

  @director = Director.find(params[:id])

end

def update_row

  @director = Director.find(params[:id])
  @director.name = params[:name]
  @director.bio = params[:bio]
  @director.dob = params[:dob]
  @director.image_url = params[:image_url]
  @director.save

    redirect_to("/directors/" + @director.id.to_s)

end


end
