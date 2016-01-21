class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :user_name
      t.belongs_to :rank, index: true, foreign_key: true
      t.belongs_to :activity_status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
