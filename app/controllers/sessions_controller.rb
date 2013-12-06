class SessionsController < ApplicationController

	def create
	  user = User.find_by_name(params[:session][:name])
	  if user && user.authenticate(params[:session][:password])
		sign_in user
		redirect_to user
	  else
		flash[:error] = 'Invalid username/password combination'
		render 'new'
	  end
	end

	def new
	end

	def destroy
	  sign_out
	  redirect_to root_url
	end

end
