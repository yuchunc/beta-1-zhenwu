class AddIsCompleteToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :is_complete, :boolean, default: false
  end
end
