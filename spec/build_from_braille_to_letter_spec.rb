require 'rspec'
require 'spec_helper'
require './lib/braille_to_letter'
require './build_from_braille_to_letter'

RSpec.describe BuildFromBraille do

  it 'exsits' do
    bfl = BuildFromBraille.new(['0.','..','..'])
    expect(bfl).to be_a(BuildFromBraille)
  end

  it 'creates an array to write to output file' do
    braille_data = File.read('./braille_test.txt').chomp
    bfl = BuildFromBraille.new(braille_data)
    expect(bfl.braille_to_letter.join).to eq('a')
  end
end
