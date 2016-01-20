class War < ActiveRecord::Base
  has_many :participants

  def result
    if stars > opponent_stars
      "Win"
    elsif stars < opponent_stars
      "Loss"
    elsif stars == opponent_stars && tie_breaker == true
      "Win"
    elsif stars == opponent_stars && tie_breaker == false
      "Loss"
    else
      "TBD"
    end
  end
end
