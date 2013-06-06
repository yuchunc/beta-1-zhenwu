class Admin::VideosController < AdminController

  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def edit
  end

  def show
    @video = Video.find(params[:id])
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
    redirect_to admin_videos_path
  end
end
