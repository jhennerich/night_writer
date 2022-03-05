require './lib/letter_to_braille'

class BuildBrailleLetter
  include LetterToBraille

  def initialize(letters_to_convert)
    @letters_to_convert = letters_to_convert
    @top_row = []
    @mid_row = []
    @bottom_row = []
    @braille_letter =[]
    @braille_lines =[]
  end

  def change_to_braille
    @letters_to_convert.each do |letter|
      @braille_letter << letter_keys[letter]
      @braille_letter.each do |element|
        @top_row = element.shift
        @mid_row = element.shift
        @bottom_row = element.shift
      end
      @braille_lines << (@top_row+"\n"+@mid_row+"\n"+@bottom_row+"\n")
    binding.pry
    end
    return @braille_lines
  end
end
