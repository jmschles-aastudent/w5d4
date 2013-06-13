class NewspapersController < ApplicationController

	def create
		@newspaper = Newspaper.create(params[:newspaper])
		if @newspaper.save!
			redirect_to newspaper_url(@newspaper)
		else
			render :new
		end
	end

	def new
		@newspaper = Newspaper.new
		2.times { @newspaper.subscription_plans.build }
	end

	def show
		@newspaper = Newspaper.find(params[:id])
	end

end
