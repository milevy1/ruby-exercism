class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    @rows = string.each_line
                  .map do |line|
                    line.split.map(&:to_i)
                  end

    @columns = rows.transpose
  end
end
