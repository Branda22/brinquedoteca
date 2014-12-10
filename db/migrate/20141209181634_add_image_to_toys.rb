class AddImageToToys < ActiveRecord::Migration
  def change
    add_column :toys, :image_file_name,    :string
    add_column :toys, :image_content_type, :string
    add_column :toys, :image_file_size,    :string
    add_column :toys, :image_updated_at,   :datetime
  end
end
