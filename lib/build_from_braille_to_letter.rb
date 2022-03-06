require 'pry'

class BuildFromBraille

  def initialize(braille_data)
    @braille_data = braille_data
    @braille_lines = []
    @counter = 0
    @braille_value_array = []

  end

  def braille_to_letter
    @braille_lines = @braille_data.split("\n")
    @counter = @braille_lines[0].length/2
    top = @braille_lines[0]
    mid = @braille_lines[1]
    bottom = @braille_lines[2]
    @braille_value_array << top+mid+bottom

    binding.pry

  end

end
