class Raindrops
  MAPPINGS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(integer)
    result = MAPPINGS.each_with_object("") do |(divisor, string), accumulator|
      accumulator << string if integer % divisor == 0
    end

    result.empty? ? integer.to_s : result
  end
end
