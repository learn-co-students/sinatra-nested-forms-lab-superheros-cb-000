class ChangeTableName < ActiveRecord::Migration[4.2]
  def self.up
    rename_table :superheroes, :super_heroes
  end
end
