class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(name: params[:session][:name].downcase)
  	if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
  	else
  	  flash.now[:danger] = 'Usuario/contraseña invalidos. Revise sus datos'
  	  render 'new'
  	end
  end

  def destroy
  	log_out if logged_in?
  	redirect_to login_url
  end

end
