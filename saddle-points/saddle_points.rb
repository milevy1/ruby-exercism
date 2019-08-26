class Matrix
  def initialize(input)
    @input = input
  end

  def rows
    input.split("\n")
         .map do |row|
           row.split(" ").map(&:to_i)
         end
  end

  def columns
    rows.transpose
  end

  def saddle_points
    (0..rows.count - 1).each_with_object([]) do |row, saddles|
      (0..columns.count - 1).each do |column|
        value = rows[row][column]
        if rows[row].max == value && columns[column].min == value
          saddles << [row, column]
        end
      end
    end
  end

  private
  attr_reader :input
end
