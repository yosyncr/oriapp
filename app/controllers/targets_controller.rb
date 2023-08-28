class TargetsController < ApplicationController


  def index
   @target = current_user.targets.all.order(created_at: :desc)
  end

  def new
     @target = Target.new
  end

  def create
     @target = Target.new(target_prams)
     if @target.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  private

  def target_prams
    params.require(:target).permit(:goal).merge(user_id: current_user.id)
  end
end
