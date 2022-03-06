require 'pry'

class BuildFromBraille

  def initialize(braille_data)
    @braille_data = braille_data
    @braille_lines = []
    @counter = 0

  end

  def braille_to_letter
    @braille_lines = @braille_data.split("\n")
    @counter = @braille_lines[0].length/2
    binding.pry

  end

end
