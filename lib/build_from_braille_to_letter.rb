require 'pry'
require './lib/braille_to_letter'

class BuildFromBraille
  include BrailleToLetter

  def initialize(braille_data)
    @braille_data = braille_data
    @braille_lines = []
    @counter = 0
    @braille_value_array = []
    @letters = []
     @top = []
     @mid = []
     @bottom = []

  end

  def build_braille_value_array
      @braille_value_array <<
         (Array(@braille_lines[0].slice!(0..1))) +
         (Array(@braille_lines[1].slice!(0..1))) +
         (Array(@braille_lines[2].slice!(0..1)))
  end

  def braille_to_letter
#    @counter = @braille_data.length/2
    counter_multipler = 0
    @braille_lines = @braille_data.split("\n")
    if @braille_lines.length > 3
      puts "something here"
    else
      count = @braille_lines[0].length / 2
      count.times do
        build_braille_value_array
      end
    end
    @braille_value_array.each_index do |index|
      @letters << get_letter_value[@braille_value_array[index]]
    end
    return @letters
  end
end
