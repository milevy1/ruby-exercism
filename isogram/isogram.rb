class Isogram
  def self.isogram?(input)
    new(input).isogram?
  end

  private
  
  attr_reader :input
  def initialize(input)
    @input = input
  end

  def letters
    input.gsub(/[ -]/, '').downcase
  end

  def letter_repeats?(letter)
    letters.count(letter) > 1
  end

  public

  def isogram?
    letters.chars.each do |letter|
      return false if letter_repeats?(letter)
    end

    true
  end
end
