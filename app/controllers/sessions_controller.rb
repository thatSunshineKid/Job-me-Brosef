class SessionsController < ApplicationController

  def create
	user = User.find_by_name(params[:session][:name])
	if user && user.authenticate(params[:session][:password])
	  sign_in user
	  redirect_to job_application_path
	else
	  flash.now[:error] = 'Invalid username/password combination'
	  render 'new'
	end
  end

  def new
  	@user = User.new
  end

  def destroy
	sign_out
	redirect_to root_url
  end

end
