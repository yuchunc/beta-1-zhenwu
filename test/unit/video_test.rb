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

require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
