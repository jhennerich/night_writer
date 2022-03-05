require 'pry'
require './lib/letter_to_braille'

class FileInteraction
  include LetterToBraille
  attr_reader :file_name, :byte_size, :message_data

  def initialize()
    @file_name = file_name
    @byte_size = self.byte_size
    @message_data = self.read_input_file
  end

  def read_input_file
    File.read(ARGV[0]).chomp
  end

  def read_byte_size
    File.size(ARGV[0])
  end


  def write_to_output_file
    letter_keys["a"].each_index do |index|
      binding.pry
    end
    File.write("braille.txt", letter_keys["a"][0], mode: "w")
  end
end
