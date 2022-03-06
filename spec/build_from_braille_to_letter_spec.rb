require 'rspec'
require 'spec_helper'
require './lib/braille_to_letter'

RSpec.describe BuildFromBraille do

  it 'exsits' do
    bfl = BuildFromBraille.new(["0.","..",".."])
    expect(bfl).to be_a(BuildFromBraille)
  end

  it 'creates an array to write to output file' do
    bfl = BuildFromBraille.new(["0.","..",".."])
    expect(bfl.braille_to_letter).to eq("a")
  end
end
