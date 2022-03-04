require 'pry'
require './lib/file_interaction'

class NightWriter
  attr_reader :file_interaction

  def initialize()
    @file_interaction = FileInteraction.new

  end

  def display_usage_message_to_stdout
    return "Usage ruby ./lib/night_writer message.txt braille.txt"
  end

  def display_write_message_to_stdout
    return "Created '#{ARGV[1]}' containing #{File.size(ARGV[0])} characters"
  end
end

night_writer = NightWriter.new

if ARGV[0] != "message.txt" || ARGV[1] != "braille.txt"
  puts night_writer.display_usage_message_to_stdout
  return
end
