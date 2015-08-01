class ChargesController < ApplicationController

	def new
		@goal = Goal.find(params[:goal])
	end

	def create
	#   # Amount in cents
	#   @price = params[:amount].to_i
 #  	@user = current_user
 #  	@goal = Goal.find(params[:goal_id])

	#   customer = Stripe::Customer.create(
	#     :email => 'example@stripe.com',
	#     :card  => params[:stripeToken]
	#   )

	#   charge = Stripe::Charge.create(
	#     :customer    => user.id,
	#     :amount      => @amount,
	#     :description => 'Goal Bounty Stripe customer',
	#     :currency    => 'aud'
	#   )

	# rescue Stripe::CardError => e
	#   flash[:error] = e.message
	#   redirect_to charges_path

	# Amount in cents
    @amount = params[:amount].to_i
    @goal = Goal.find(params[:goal_id])
    @user = current_user
    # @goal = Goal.find(params[:goal_id])
    # @new_goal = Goal.find(params[:goal_id])

    customer = Stripe::Customer.create(
      :email => @user.email,
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Goal Bounty Stripe customer',
      :currency    => 'aud'
    )

    if charge["paid"] == true
    	@goal.update_attributes(paid: true)
    end
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charges_path

    
	end
end
