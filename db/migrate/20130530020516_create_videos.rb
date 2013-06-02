class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|

      t.string :title
      t.string :description
      t.string :yt_video_id

      t.timestamps
    end
  end
end
