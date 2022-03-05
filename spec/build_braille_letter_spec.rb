require 'rspec'
require 'spec_helper'
require './lib/letter_to_braille'
require './file_interaction'
require './lib/build_braille_letter'
require './lib/file_interaction'

RSpec.describe BuildBrailleLetter do

  it 'creates an array to write to output file' do
    fi = FileInteraction.new
    bbl = BuildBrailleLetter.new
    braille_letter = bbl.letter_keys["a"]
    top_row = braille_letter.shift
    mid_row = braille_letter.shift
    bottom_row = braille_letter.shift
    line = (top_row+"\n"+mid_row+"\n"+bottom_row+"\n")
    fi.write_to_output_file(line)
  end
end
