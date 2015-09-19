class PardonsController < ApplicationController

  before_action :admin_user,  only: :destroy

  def index
  	@pardons = Pardon.all
  	#paginate(page: params[:page])
  	@pardon = Pardon.new
  end

  def create
  	@pardon = Pardon.new(pardon_params)
  	if @pardon.save
  		flash[:success] = "Estado compartido"
  		redirect_to pardons_url
  	else
  		redirect_to pardons_url
  	end
  end

  def destroy
  	Pardon.find(params[:id]).destroy
    flash[:success] = "Publicacion eliminada"
    redirect_to pardons_url
  end

  private

      def pardon_params
      	params.require(:pardon).permit(:kind, :content)
      end

      def admin_user
	  	if current_user.nil?
	  		redirect_to(login_path)
	  	else
	  		redirect_to(current_user) unless current_user.admin?
	  	end
	  end
end
