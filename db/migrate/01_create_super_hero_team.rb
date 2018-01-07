class CreateSuperHeroTeam < ActiveRecord::Migration[4.2]

  def change
      create_table :super_hero_teams do |t|
        t.string :name
        t.string :motto
      end
  end

end
