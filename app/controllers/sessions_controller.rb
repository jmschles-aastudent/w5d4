class SessionsController < ApplicationController

	def create
		@user = User.find_by_name(params[:user][:name])
		if @user && @user.correct_password?(params[:user][:password])
			login(@user)
			redirect_to user_url(@user)
		else
			@user = User.new(params[:user])
			render :new
		end
	end

	def new
		@user = User.new
	end

	def destroy
		u = current_user
		if u.nil?
			redirect_to new_session_url
			return
		end
		logout(u)
		redirect_to new_session_url
	end
end
