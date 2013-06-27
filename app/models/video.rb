# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  yt_video_id :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  is_complete :boolean          default(FALSE)
#

class Video < ActiveRecord::Base

  #Maybe I don't even need description, I think the youtube_it gem can get it from online.

  scope :completes, where(:is_complete => true)
  scope :incompletes, where(:is_complete => false)

  attr_accessible :title,
                  :yt_video_id,
                  :description,
                  :is_complete

  def self.yt_session
    @yt_session ||= YouTubeIt::Client.new( username: YouTubeITConfig.username,
                                           password: YouTubeITConfig.password,
                                           dev_key: YouTubeITConfig.dev_key
                                         )
  end

  def self.delete_video(video)
    yt_session.video_delete(video.yt_video_id)
    video.destroy
  end

  def self.delete_incomplete_videos
    self.incompletes.map{|r| r.destroy}
  end

  def self.update_video(video, params)
    yt_session.video_update(video.yt_video_id, video_options(params))
    video.update_attributes(params)
  end

  def self.token_form(params, nexturl)
    yt_session.upload_token(video_options(params), nexturl)
  end

  private

    def self.video_options(params)
      opt = { title: params[:title],
              description: params[:description],
              category: "Sports",
              keywords: ["test"]
            }
    end

end
