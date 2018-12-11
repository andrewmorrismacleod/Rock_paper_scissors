class RPSGame

  def self.check_win(hand1, hand2)
    hand1 = hand1.downcase
    hand2 = hand2.downcase

    win = {
      "rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }

    if hand1 == hand2
      outcome =  "It's a Draw!"
    elsif win[hand1] == hand2
      outcome  = "Player 1 wins with #{hand1}!"
    elsif win[hand2] == hand1
      outcome  = "Player 2 wins with #{hand2}!"
    else
      outcome  = "uh oh! Looks like you didn't enter valid inputs!"
    end

    return outcome

  end

end
