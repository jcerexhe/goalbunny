class AdminController < ApplicationController

  def index
  	@users = User.all
		unless current_user.has_role? :admin 
			redirect_to root_path, :alert => "Access denied."
		end
		@goals = Goal.all
    @goal = Goal.new
    @completed_goals = @goals.completed.ordered_by_due_date
    @open_goals = @goals.not_completed.ordered_by_due_date
  end

  def edit
  	@users = User.all
  end
end

	