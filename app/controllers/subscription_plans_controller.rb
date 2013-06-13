class SubscriptionPlansController < ApplicationController

	def create
		@newspaper = Newspaper.find(params[:newspaper_id])
		@sub_plan = @newspaper.subscription_plans.build(params[:subscription_plan])
		if @sub_plan.save!
			redirect_to newspaper_url(@newspaper)
		else
			render :new
		end
	end

	def new
		@newspaper = Newspaper.find(params[:newspaper_id])
		@sub_plan = SubscriptionPlan.new
	end

end
