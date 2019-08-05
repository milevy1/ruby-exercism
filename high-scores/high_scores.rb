class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    scores.max(3)
  end

  def report
    "Your latest score was #{latest}. #{feedback}"
  end

  def feedback
    if latest == personal_best
      "That's your personal best!"
    else
      "That's #{personal_best - latest} short of your personal best!"
    end
  end

end
