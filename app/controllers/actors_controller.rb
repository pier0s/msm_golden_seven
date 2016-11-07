class ActorsController < ApplicationController

def index

@actors=Actor.all

end

def show

@actor=Actor.find(params[:id])

end

def new_form

end

def create_row

@actor = Actor.new
@actor.name = params[:name]
@actor.bio = params[:bio]
@actor.dob = params[:dob]
@actor.image_url = params[:image_url]
@actor.save

  redirect_to("/actors/" + @actor.id.to_s)


end

def delete_actor

  @actor = Actor.find(params[:id])
  @actor.destroy
  redirect_to("/actors/")

end

def edit_form

@actor = Actor.find(params[:id])

end

def update_row

  @actor = Actor.find(params[:id])
  @actor.name = params[:name]
  @actor.bio = params[:bio]
  @actor.dob = params[:dob]
  @actor.image_url = params[:image_url]
  @actor.save

    redirect_to("/actors/" + @actor.id.to_s)

end

end
