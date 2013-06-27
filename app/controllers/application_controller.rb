class ApplicationController < ActionController::Base
  protect_from_forgery

  layout 'main'

  def homepage
  end

  def videos
    @video = Video.all
  end

  def video
    @video = Video.find(params[:id])
  end

  def fees
  end

  def schedule
  end

end
