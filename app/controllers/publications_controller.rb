class PublicationsController < ApplicationController

  before_action :admin_user, only: :destroy

  def new
  	@publication = Publication.new
  end

  def create
  	if current_user.nil?
  		@publication = Publication.new(publication_params)
  	else
  		@publication = current_user.publications.build(publication_params)
  	end
  	if @publication.save
  		flash[:success] = "Publicacion compartida"
  		redirect_to root_url
  	else
  		render 'new'
  	end
  end

  def show
  	@user = User.find(params[:id])
  end

  def destroy
  	Publication.find(params[:id]).destroy
    flash[:success] = "Publicacion eliminada"
    redirect_to root_url
  end

  private

      def publication_params
      	params.require(:publication).permit(:content, :picture)
      end

      def admin_user
      	if current_user.nil?
	  		redirect_to(login_path)
	  	else
	  		redirect_to(current_user) unless current_user.admin?
	  	end
	  end
end
