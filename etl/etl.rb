class ETL
  def self.transform(old)
    old.reduce({}) do |accumulator, (points, letters)|
      letters.each do |letter|
        accumulator[letter.downcase] = points
      end
      accumulator
    end
  end
end
