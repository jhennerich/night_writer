require 'spec_helper'
require './lib/file_interaction'

RSpec.describe FileInteraction do

  it 'exists' do
    file_interaction = FileInteraction.new
    expect(file_interaction).to be_a (FileInteraction)
  end

  it 'can read the data file' do
    message_data = File.read("./message_test.txt").chomp
    expect(message_data).to eq("a")
  end

  it 'can write to the braille file' do
    message_data = File.read("./message_test.txt").chomp
    File.write("braille.txt", message_data, mode: "w")
    braille_file = File.read("braille.txt").chomp
    expect(braille_file).to eq("a")
  end

  xit '#write_to_output_file can write braille to braille file' do
    @file_interaction.write_to_output_file
    expect(File.read(ARGV[1])).to eq(["0.", "..", ".."])
  end
end
