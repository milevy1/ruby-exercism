class Raindrops
  RULES = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(integer)
    new(integer).to_s
  end

  private
  attr_reader :integer

  def initialize(integer)
    @integer = integer
  end

  def raindrop_speak
    RULES.each_with_object(result = '') do |(divisor, sound), result|
      result << sound if divisible_by?(divisor)
    end
  end

  def divisible_by?(divisor)
    integer % divisor == 0
  end

  public

  def to_s
    raindrop_speak.empty? ? integer.to_s : raindrop_speak
  end
end
