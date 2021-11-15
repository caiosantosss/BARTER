class CreateOfferings < ActiveRecord::Migration[6.0]
  def change
    create_table :offerings do |t|
      t.integer :status, default: 0
      t.references :posted, null: false, foreign_key: { to_table: :items}
      t.references :offered, null: false, foreign_key: { to_table: :items}
      t.timestamps
    end
  end
end
