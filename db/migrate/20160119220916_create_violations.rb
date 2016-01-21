class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.belongs_to :violation_type, index: true, foreign_key: true
      t.belongs_to :participation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
