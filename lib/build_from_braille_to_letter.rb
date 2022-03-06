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

  end

  def braille_to_letter
    @braille_lines = @braille_data.split("\n")
    @counter = @braille_lines[0].length/2
    top = @braille_lines[0]
    mid = @braille_lines[1]
    bottom = @braille_lines[2]

    @counter.times do
      @braille_value_array <<
         (Array(top.slice!(0..1))) +
         (Array(mid.slice!(0..1))) +
         (Array(bottom.slice!(0..1)))
    end
    @braille_value_array.each_index do |index|
      @letters << get_letter_value[@braille_value_array[index]]
    end
    @letters
  end
end
