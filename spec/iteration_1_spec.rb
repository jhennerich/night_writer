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
    expect(@night_writer.display_usage_message_to_stdout).to eq("Usage ruby ./lib/night_writer message.txt braille.txt")

  end

  it 'outputs to $stdout when called with two argument' do
    byte_size = File.size(ARGV[0])
  end
end

RSpec.describe FileInteraction do
  before(:each) do
    @file_interaction = FileInteraction.new()
  end

  it 'exists' do
    expect(@file_interaction).to be_a (FileInteraction)
  end

  it 'can read the data file' do
    #byte_size = File.size(ARGV[0])
    message_data = File.read(ARGV[0]).chomp
    expect(message_data).to eq("hello world")
  end

  it 'can write to the braille file' do

    message_data = File.read(ARGV[0]).chomp
    File.write("braille.txt", message_data, mode: "w")
    braille_file = File.read("braille.txt").chomp
    expect(braille_file).to eq("hello world")
  end
end
