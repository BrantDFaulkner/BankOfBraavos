class CreateWarHeros < ActiveRecord::Migration
  def change
    create_table :war_heros do |t|
      t.belongs_to :participation, index: true, foreign_key: true
      t.string :reason

      t.timestamps null: false
    end
  end
end
