require 'pry'
require 'rspec'
require 'spec_helper'
require './lib/night_writer'
require './lib/file_interaction'

RSpec.describe NightWriter do
  before(:each) do
    ARGV[0] = "message.txt"
    ARGV[1] = "braille.txt"
    @night_writer = NightWriter.new()
  end

  it 'exists' do
    expect(@night_writer).to be_a (NightWriter)
  end

  it 'outputs to $stdout when called with no or one argument' do
    message = 'Usage ruby ./lib/night_writer message.txt braille.txt'
#    @night_writer.display_message_to_stdout
    expect(@night_writer).to output('Usage ruby ./lib/night_writer message.txt braille.txt').to_stdout

  end

  xit 'outputs to $stdout when called with two argument' do
  end
end

RSpec.describe FileInteraction do
  it 'exists' do
    output_to_file = FileInteraction.new()
    expect(output_to_file).to be_a (FileInteraction)
  end
end
