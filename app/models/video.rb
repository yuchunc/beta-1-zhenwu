class Video < ActiveRecord::Base

  #Maybe I don't even need description, I think the youtube_it gem can get it from online.

  attr_accessible :title,
                  :yt_video_id,
                  :description

  def self.yt_session
    @yt_session ||= YouTubeIt::Client.new( username: YouTubeITConfig.username,
                                           password: YouTubeITConfig.password,
                                           dev_key: YouTubeITConfig.dev_key
                                         )
  end

end
