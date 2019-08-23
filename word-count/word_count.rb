class Phrase
  attr_reader :input_string

  def initialize(input_string)
    @input_string = input_string
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, result|
      result[word] += 1
    end
  end

  def words
    input_string.downcase.scan(/\b[\w']+\b/)
  end
end
