class AddWarZeroToWar < ActiveRecord::Migration
  def change
    add_reference :wars, :war_zero, index: true, foreign_key: true
  end
end
