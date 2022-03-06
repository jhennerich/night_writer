require 'rspec'
require 'spec_helper'
require './lib/braille_to_letter'

RSpec.describe BrailleToLetter do

  it 'exsits' do
    btl = BrailleToLetter.new([0.],[..],[..])
    expect(bbl).to be_a(BrailleToLetter)
  end

  it 'creates an array to write to output file' do
    btl = BrailleToLetter.new([0.],[..],[..])
    expect(bbl.braille_to_letter).to eq("a")
  end
end
