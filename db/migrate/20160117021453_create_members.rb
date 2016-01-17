class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :user_name
      t.string :rank
      t.string :status

      t.timestamps null: false
    end
  end
end
