require './lib/letter_to_braille'

class BuildBrailleLetter
  include LetterToBraille
  attr_reader :letters_to_convert

  def initialize(letters_to_convert)
    @letters_to_convert = letters_to_convert.chars
    @top_row = []
    @mid_row = []
    @bottom_row = []
    @braille_value_array =[]
    @braille_lines =[]
    @counter = 0
  end

  def change_to_braille
    count = 0
    @counter = @letters_to_convert.count

    @counter.times do
      count += 1
      letter = @letters_to_convert.shift
      @braille_value_array = get_braille_value[letter]

      if (count % 40).zero?
        @top_row << "\n"
        @mid_row << "\n"
        @bottom_row << "\n"
        @braille_lines << @top_row.join+@mid_row.join+@bottom_row.join
        @top_row = []
        @mid_row = []
        @bottom_row = []
      else
        @top_row << @braille_value_array.shift
        @mid_row << @braille_value_array.shift
        @bottom_row << @braille_value_array.shift
      end
    end

    @braille_lines << @top_row.join+"\n"+@mid_row.join+"\n"+@bottom_row.join+"\n"
    @braille_lines.join
  end
end
