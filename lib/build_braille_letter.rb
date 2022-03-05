require './lib/letter_to_braille'

class BuildBrailleLetter
  include LetterToBraille

  def initialize(letters_to_convert)
    @letters_to_convert = letters_to_convert
    @top_row = []
    @mid_row = []
    @bottom_row = []
    @braille_value_array =[]
    @braille_lines =[]
    @count_letters = letters_to_convert.count
  end

  def change_to_braille
    @letters_to_convert.each do |letter|
      @braille_value_array = get_braille_value[letter]
      @top_row = @braille_value_array.shift
      @mid_row = @braille_value_array.shift
      @bottom_row = @braille_value_array.shift
      @braille_lines << (@top_row+"\n"+@mid_row+"\n"+@bottom_row)
      @letters_to_convert.shift
    end
    return @braille_lines
  end
end
