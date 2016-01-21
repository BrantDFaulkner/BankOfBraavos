class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.belongs_to :member, index: true, foreign_key: true
      t.belongs_to :war, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
