require 'rspec'
require 'spec_helper'
require './lib/file_interaction'

RSpec.describe LetterToBraille do
  let(:letter_to_braille) { FileInteraction.new { extend LetterToBraille} }

  it 'returns braille' do
   expect(letter_to_braille.letter_keys).to eq(a)
  end
end
