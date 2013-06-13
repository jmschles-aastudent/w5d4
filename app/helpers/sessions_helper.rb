module SessionsHelper

	def require_login
		unless logged_in?
			redirect_to new_session_url
		end
	end

	def login(user)
		user.session_token = SecureRandom.urlsafe_base64(16)
		user.save!
		session[:session_token] = user.session_token
	end

	def logout(user)
		user.session_token = nil
		user.save!
		session[:session_token] = nil
	end

	def current_user
		return nil unless session[:session_token]
		@current_user ||= User.find_by_session_token(session[:session_token])
	end

	def logged_in?
		!!current_user
	end

end
