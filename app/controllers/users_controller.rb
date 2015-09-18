class UsersController < ApplicationController
  before_action :admin_user,  only: [:destroy, :create, :new, :edit, :update, :index]

  def index
  	@users = User.paginate(page: params[:page])
  end

  def new
  	@user = User.new
  end

  def create
	@user = User.new(user_params)
	if @user.save
		flash[:info] = "Usuario creado"
		redirect_to users_path
	else
		render 'new'
	end
  end

  def show
	@user = User.find(params[:id])
  end

  def destroy
  	User.find(params[:id]).destroy
    flash[:success] = "Usuario eliminado"
    redirect_to users_url
  end

  private

	  #Evita la inyteccion de parametros indeseados por medio de un proxy
	  def user_params
	  	params.require(:user).permit(:name, :password, :password_confirmation, :zone, :picture)
	  end

	  #Verifica que el usuario tenga privilegios administrativos
	  def admin_user
	  	if current_user.nil?
	  		redirect_to(login_path)
	  	else
	  		redirect_to(current_user) unless current_user.admin?
	  	end
	  end

	  #Verifica que el usuario haya logueado
	  def logged_in_user
	  	unless logged_in?
	  		flash[:danger] = "Porfavor inicie sesion"
	  		redirect_to(login_url)
	  	end
	  end

end
