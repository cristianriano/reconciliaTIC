class StaticPagesController < ApplicationController
  def home
  	@feed_publications = Publication.paginate(page: params[:page])
  	@pardon = Pardon.new
  end

  def help
  end

  def about
  end

  def contact
  end
end
