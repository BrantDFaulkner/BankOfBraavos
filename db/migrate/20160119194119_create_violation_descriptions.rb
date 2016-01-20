class CreateViolationDescriptions < ActiveRecord::Migration
  def change
    create_table :violation_descriptions do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
