class Admin::VideoController < AdminController

  def index
    @video = Video.all
  end

  def new
    @video = Video.new
  end

  def edit
  end

  def show
  end

  def create
    Video.create(params[:video])
  end

  def update
    Video.update_attributes(params[:video])
  end

  def destroy
    @video = Video.find(params[:id])
    Video.delete_video(@video)
  end
end
