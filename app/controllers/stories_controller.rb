class StoriesController < ApplicationController

def index
@story = Story.all.order(created_at: :desc)
end

def new
  
  #@story = @target.stories.build
end

def create
  Story.create(story_prams)
  #@target = Target.find(params[:id])
  #@story = @target.stories.build(story_params)
  #if @story.save
   # redirect_to root_path
 # else
  #  render :new, status: :unprocessable_entity
  #end
end

private
def story_prams
  params.require(:story).permit(:text,:'内容').merge(user_id: current_user.id, target_id:  params[:target_id])
end
end