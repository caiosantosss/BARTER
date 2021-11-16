class AddUrlImageToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :url_image, :string
  end
end
