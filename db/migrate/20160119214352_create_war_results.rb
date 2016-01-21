class CreateWarResults < ActiveRecord::Migration
  def change
    create_table :war_results do |t|
      t.string :result

      t.timestamps null: false
    end
  end
end
