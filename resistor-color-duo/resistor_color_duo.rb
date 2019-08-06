class ResistorColorDuo
  def self.value(color_array)
    color_hash = {
      'black'  => '0',
      'brown'  => '1',
      'red'    => '2',
      'orange' => '3',
      'yellow' => '4',
      'green'  => '5',
      'blue'   => '6',
      'violet' => '7',
      'grey'   => '8',
      'white'  => '9'
    }

    color_array.map { |color| color_hash[color] }
    .join
    .to_i
  end
end
