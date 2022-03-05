require 'rspec'
require 'spec_helper'
require './lib/letter_to_braille'
require './lib/build_braille_letter'

RSpec.describe BuildBrailleLetter do

  it 'exsits' do
    bbl = BuildBrailleLetter.new("a")
    expect(bbl).to be_a(BuildBrailleLetter)
  end

  it 'creates an array to write to output file' do
    bbl = BuildBrailleLetter.new("a")
    expect(bbl.change_to_braille).to eq("0.\n..\n..\n")
  end
end
