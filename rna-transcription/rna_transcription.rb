class Complement
  def self.of_dna(string)
    answer = []
    array_of_letters = string.split("")

    complement_letters = array_of_letters.map { |letter|
      if letter == 'G'
        'C'
      elsif letter == 'C'
        'G'
      elsif letter == 'T'
        'A'
      elsif letter == 'A'
        'U'
      else
        return ''
      end
    }

    return complement_letters.join
  end
end
