require 'pry'
require 'rspec'
require 'spec_helper'
require './lib/letter_to_braille'

RSpec.describe LetterToBraille do
  let(:letter_to_braille) { Class.new { extend LetterToBraille} }

   it 'returns braille' do
     expect(letter_to_braille.letter_keys["a"]).to eq(["0.", "..", ".."])
     expect(letter_to_braille.letter_keys[" "]).to eq(["..", "..", ".."])
   end
end
