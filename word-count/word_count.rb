class Phrase
  attr_reader :input_string

  def initialize(input_string)
    @input_string = input_string
  end

  def word_count
    words.reduce(Hash.new(0)) do |result, word|
      result[word] += 1
      result
    end
  end

  def words
    input_string.downcase
                .gsub(/\s'|'\s/, ' ')        # Clean quoted words
                .gsub(/[^0-9a-z\s,\n']/, '') # Clean special chars
                .split(/[\s,\n]/)            # Split on spaces and commas
                .reject(&:empty?)            # Remove empty strings
  end
end
