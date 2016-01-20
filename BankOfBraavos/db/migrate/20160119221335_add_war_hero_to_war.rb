class AddWarHeroToWar < ActiveRecord::Migration
  def change
    add_reference :wars, :war_hero, index: true, foreign_key: true
  end
end
