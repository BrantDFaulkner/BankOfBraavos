class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.belongs_to :member, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
