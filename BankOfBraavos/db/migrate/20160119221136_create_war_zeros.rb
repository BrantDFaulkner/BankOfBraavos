class CreateWarZeros < ActiveRecord::Migration
  def change
    create_table :war_zeros do |t|
      t.belongs_to :participant, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
