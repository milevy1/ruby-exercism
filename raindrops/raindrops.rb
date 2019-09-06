class Raindrops
  RULES = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(integer)
    RULES.each_with_object(result = '') do |(divisor, rain_sound), accumulator|
      accumulator << rain_sound if integer % divisor == 0
    end

    result.empty? ? integer.to_s : result
  end
end
