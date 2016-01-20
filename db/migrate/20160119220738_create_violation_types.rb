class CreateViolationTypes < ActiveRecord::Migration
  def change
    create_table :violation_types do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
