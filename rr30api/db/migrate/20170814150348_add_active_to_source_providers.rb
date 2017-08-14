class AddActiveToSourceProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :source_providers, :isactive, :boolean, default: true

    SourceProvider.update_all(:isactive=>true)
  end
end
