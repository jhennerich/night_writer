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
    @counter = 0
  end

  def change_to_braille

    # single letter to change
    if @letters_to_convert.class == String
      @braille_value_array = get_braille_value[@letters_to_convert]
      @top_row = @braille_value_array.shift
      @mid_row = @braille_value_array.shift
      @bottom_row = @braille_value_array.shift
      @braille_lines = @top_row+"\n"+@mid_row+"\n"+@bottom_row+"\n"

    else
      @counter = @letters_to_convert.count
      @letters_to_convert.each do |letter|
        @braille_value_array = get_braille_value[letter]
        @top_row << @braille_value_array.shift
        @mid_row << @braille_value_array.shift
        @bottom_row << @braille_value_array.shift
      end
      #(1..(@counter)).each do |insert_newline|
#puts "insert_newline value #{insert_newline % 40}"
#        if insert_newline % 40 == 0
#          @braille_lines << (@top_row.join)+"\n"+(@mid_row.join)+"\n"+(@bottom_row.join)+"\n"
#          @letters_to_convert.shift
#        else
#          @braille_lines << (@top_row.join)+"\n"+(@mid_row.join)+"\n"+(@bottom_row.join)
#          @letters_to_convert.shift
        #end
      #end
    end
    #make sure last element has \n"
#    @braille_lines[@counter -1] = ((@top_row.join)+"\n"+(@mid_row.join)+"\n"+(@bottom_row.join)+"\n")
    @braille_lines << (@top_row.join)+"\n"+(@mid_row.join)+"\n"+(@bottom_row.join)+"\n"
    binding.pry
    @braille_lines
  end
end
