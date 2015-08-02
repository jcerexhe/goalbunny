class GoalsController < ApplicationController
  before_action :set_goal, only: [:completed, :show, :edit, :update, :destroy]

  # GET /goals
  # GET /goals.json
  def index
    @goals = current_user.goals.paid
    @goal = Goal.new
    @completed_goals = @goals.completed.ordered_by_due_date
    @open_goals = @goals.not_completed.ordered_by_due_date
    # @image = @goals.image_url
  end

  def completed
    @goal.update_completed
    redirect_to :back
  end

  # GET /goals/1
  # GET /goals/1.json
  def show
    @user = @goal.user
    @setting = @user.setting
  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  # POST /goals.json
  def create
    @goal = Goal.new(goal_params)
    @goal.user = current_user
    @goal.reward_cost = @goal.reward_cost * 100

    respond_to do |format|
      if @goal.save
        format.html { redirect_to new_charge_path(goal: @goal.id), notice: 'Goal was successfully created.' }
        format.json { render :index, status: :created, location: @goal }
      else
        format.html { render :new }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to @goal, notice: 'Goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_url, notice: 'Goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:title, :reward, :item_details, :reward_link, :image, :reward_cost, :due, :completed)
    end
end
