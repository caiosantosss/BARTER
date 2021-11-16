class RemoveUrlColumnFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :url_image, :string
  end
end
