class CreateWars < ActiveRecord::Migration
  def change
    create_table :wars do |t|
      t.belongs_to :war_result

      t.string :opponent
      t.integer :stars
      t.float :destruction
      t.integer :opp_stars
      t.float :opp_destruction

      t.timestamps null: false
    end
  end
end
