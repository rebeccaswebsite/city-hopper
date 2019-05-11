class AddDefaultMigration < ActiveRecord::Migration[5.2]
  def self.up
    change_column :cities, :name, :string, :default => 'NA'
  end
end
