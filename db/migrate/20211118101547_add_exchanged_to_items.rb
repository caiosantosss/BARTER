class AddExchangedToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :exchanged, :boolean, default: false
  end
end
