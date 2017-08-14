class CreateSourceProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :source_providers do |t|
      t.string :name, :null => false
      t.string :url, :null => false
      t.string :adress, :null => false
      t.datetime :last_sync_at

      t.timestamps
    end
    add_index :source_providers, [:name, :url], unique: true
  end
end
