require './lib/letter_to_braille'

class BuildBrailleLetter
  include LetterToBraille
  attr_reader :letters_to_convert

  def initialize(letters_to_convert)
    @letters_to_convert = letters_to_convert
    @top_row = []
    @mid_row = []
    @bottom_row = []
    @braille_value_array =[]
    @braille_lines =[]
  end

  def change_to_braille

    if @letters_to_convert.class == String
      @braille_value_array = get_braille_value[@letters_to_convert]
      @top_row = @braille_value_array.shift
      @mid_row = @braille_value_array.shift
      @bottom_row = @braille_value_array.shift
      @braille_lines = @top_row+"\n"+@mid_row+"\n"+@bottom_row+"\n"

    else
      @letters_to_convert.each do |letter|
        @braille_value_array = get_braille_value[letter]
        @top_row = @braille_value_array.shift
        @mid_row = @braille_value_array.shift
        @bottom_row = @braille_value_array.shift
        @braille_lines << (@top_row+"\n"+@mid_row+"\n"+@bottom_row)
        @letters_to_convert.shift
      end
    end
    @braille_lines
  end
end
