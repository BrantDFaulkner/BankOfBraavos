class CreateActivityStatuses < ActiveRecord::Migration
  def change
    create_table :activity_statuses do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
