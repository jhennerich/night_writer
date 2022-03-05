require 'pry'
require 'spec_helper'
require './lib/file_interaction'
require './lib/build_braille_letter'

RSpec.describe FileInteraction do

  it 'exists' do
    file_interaction = FileInteraction.new
    expect(file_interaction).to be_a (FileInteraction)
  end

  it 'can read the data file' do
    message_data = File.read('./message_test.txt').chomp
    expect(message_data).to eq('a')
  end

  it 'can write to the braille file' do
    message_data = File.read('./message_test.txt').chomp
    File.write('braille.txt', message_data, mode: 'w')
    braille_file = File.read('braille.txt').chomp
    expect(braille_file).to eq('a')
  end

  it '#write_to_output_file can write a single letterto braille to file' do
    fi = FileInteraction.new
    message_data = File.read('./message_test.txt').chomp
    bbl = BuildBrailleLetter.new(message_data)
    line_to_write = bbl.change_to_braille

    fi.write_to_output_file(line_to_write)
    expect(File.read('./braille.txt')).to eq(line_to_write)
  end

  it '#write_to_output_file can write many letters to braille to file' do
    fi = FileInteraction.new
    message_data = File.read('./message_test2.txt').chomp
    bbl = BuildBrailleLetter.new(message_data)
    line_to_write = bbl.change_to_braille

    fi.write_to_output_file(line_to_write)
    expect(File.read('./braille.txt')).to eq(line_to_write)
  end

  xit '#write_to_output_file can write 41 letters with newline' do

    fi = FileInteraction.new
    message_data = File.read('./message_test.txt').chomp
    bbl = BuildBrailleLetter.new(message_data)
    line_to_write = bbl.change_to_braille

    fi.write_to_output_file(line_to_write)
    expect(File.read('./braille.txt')).to eq(line_to_write)
  end
end
