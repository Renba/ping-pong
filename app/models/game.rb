class Game < ActiveRecord::Base
  belongs_to :player1, class_name: "User"
  belongs_to :player2, class_name: "User"
#  validates_presence_of  :player1_id,
#                         :player2_id,
#                         :player2_score,
#                         :player2_score,
#                         :player_at,


  def check_score
    if (self.player1_score < 21 && self.player2_score < 21)
      return false
    end

    diff_score = self.player1_score - self.player2_score
    if diff_score.abs < 2
      return false
    end

    return true
  end

end
