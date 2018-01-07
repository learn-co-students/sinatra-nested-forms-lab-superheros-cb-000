class AddColumnToSuperHeroes < ActiveRecord::Migration[4.2]

  def change
    add_column :super_heroes, :super_hero_team_id, :integer
  end

end
