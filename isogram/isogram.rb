class Isogram
  def self.isogram?(input)
    letters = input.gsub(/[ -]/, '').downcase

    letters.chars.each do |char|
      return false if letters.count(char) > 1
    end

    true
  end
end
