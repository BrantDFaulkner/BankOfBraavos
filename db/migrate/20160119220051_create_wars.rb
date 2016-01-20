class CreateWars < ActiveRecord::Migration
  def change
    create_table :wars do |t|
      t.string :opponent
      t.integer :stars
      t.integer :opponent_stars
      t.boolean :tie_breaker

      t.timestamps null: false
    end
  end
end
