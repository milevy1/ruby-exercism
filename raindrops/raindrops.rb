class Raindrops
  def initialize(integer)
    @integer = integer
  end

  def self.convert(integer)
    new(integer).to_s
  end

  def to_s
    raindrop_speak.empty? ? integer.to_s : raindrop_speak
  end

  RULES = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def raindrop_speak
    RULES.each_with_object(result = '') do |(divisor, rain_sound), result|
      result << rain_sound if divisible?(divisor)
    end
  end

  def divisible?(divisor)
    integer % divisor == 0
  end

  private
  attr_reader :integer
end
