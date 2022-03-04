require 'pry'
require 'rspec'
require 'spec_helper'
require './lib/night_writer'

RSpec.describe NightWriter do
  it 'exists' do
    night_writer = NightWriter.new()
    expect(night_writer).to be_a (NightWriter)
  end

  it 'outputs to $stdout when called with no arguments' do
  end

  it 'outputs to $stdout when called with one argument' do
  end

  it 'outputs to $stdout when called with two argument' do
  end
end

RSpec.describe FileInteraction do
  it 'exists' do
    output_to_file = FileInteraction.new()
    expect(output_to_file).to be_a (FileInteraction)
  end
end
