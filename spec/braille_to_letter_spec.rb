require 'rspec'
require 'spec_helper'
require './lib/braille_to_letter'

RSpec.describe BrailleToLetter do
  let(:braille_to_letter) { Class.new { extend BrailleToLetter} }

   it 'returns a letter' do
      expect(braille_to_letter.get_letter_value[['0.', '..', '..']]).to eq('a')
   end
end
