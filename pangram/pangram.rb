class Pangram
  def self.pangram?(sentence)
    ("A".."Z").each do |letter|
      return false if !sentence.upcase.include?(letter)
    end

    return true
  end
end
