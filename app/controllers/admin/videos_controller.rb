class Admin::VideosController < AdminController

  def index
    @videos = Video.all
  end

  def edit
  end

  def show
    @video = Video.find(params[:id])
  end

  def update
    Video.update_attributes(params[:video])
  end

  def destroy
    @video = Video.find(params[:id])
    Video.delete_video(@video)
    redirect_to admin_videos_path
  end

  def upload
    @video = Video.create(params[:video])
    if @video
      @upload_info = Video.token_form(params[:video], save_video_new_video_url(:video_id => @video.id))
    else
      respond_to do |format|
        format.html { render "/admin/videos/new" }
      end
    end
  end

  def save_video
    @video = Video.find(params[:video_id])
      if params[:status].to_i == 200
        @video.update_attributes(:yt_video_id => params[:id].to_s, :is_complete => true)
        Video.delete_incomplete_videos
      else
        Video.delete_video(@video)
      end
    redirect_to videos_path, :notice => "video successfully uploaded"
  end

end
