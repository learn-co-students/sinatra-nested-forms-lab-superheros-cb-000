class CreateSuperHeroes < ActiveRecord::Migration[4.2]

  def change
    create_table :superheroes do |t|
      t.string :name
      t.string :power
      t.string :bio
    end
  end

end
