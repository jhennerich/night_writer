require 'rspec'
require 'spec_helper'
require './lib/night_writer'

RSpec.describe NightWriter do

  xit 'exists' do
    expect(@night_writer).to be_a (NightWriter)
  end
  
  it 'outputs to $stdout when called with no or one argument' do

    message = 'Usage ruby ./lib/night_writer message.txt braille.txt'
    expect(NightWriter.display_usage_message_to_stdout).to eq("Usage ruby ./lib/night_writer message.txt braille.txt")

  end

  it 'outputs to $stdout when called with two argument' do
    message = "Created '#{ARGV[1]}' containing #{File.size(ARGV[0])} characters"
    expect(NightWriter.display_write_message_to_stdout).to eq(message)
  end
end
