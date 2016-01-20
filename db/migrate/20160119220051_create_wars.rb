class CreateWars < ActiveRecord::Migration
  def change
    create_table :wars do |t|
      t.string :opponent
      t.boolean :result

      t.timestamps null: false
    end
  end
end
