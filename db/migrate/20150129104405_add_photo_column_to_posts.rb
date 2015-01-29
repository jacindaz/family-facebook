class AddPhotoColumnToPosts < ActiveRecord::Migration

  # Devise generated these columns:
      # t.string   "photo_file_name"
      # t.string   "photo_content_type"
      # t.integer  "photo_file_size"
      # t.datetime "photo_updated_at"

  def self.up
    add_attachment :posts, :photo
  end

  def self.down
    remove_attachment :posts, :photo
  end
end
