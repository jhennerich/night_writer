require 'rspec'
require 'spec_helper'
require './lib/night_reader'

RSpec.describe NightReader do

  xit 'exists' do
    night_reader= NightReader.new
    expect(night_reader).to be_a (NightReader)
  end

  it 'outputs to $stdout when called with no or one argument' do
    message = 'Usage ruby ./lib/night_reader braille.txt original_message.txt '
    expect(NightReader.display_usage_message_to_stdout).to eq(message)

  end

  it 'outputs to $stdout when called with two argument' do
    ARGV[0] = "./braille.txt"
    ARGV[1] = "./original_message.txt"
    message = "Created '#{ARGV[1]}' containing #{File.size(ARGV[0])} characters"
    expect(NightReader.display_write_message_to_stdout).to eq(message)

  end
end
