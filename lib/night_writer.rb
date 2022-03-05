require 'pry'
require './lib/build_braille_letter'

class NightWriter

  def initialize()
    BuildBrailleLetter.new(File.read(ARGV[0]).chomp)
  end

  def self.display_usage_message_to_stdout
    return "Usage ruby ./lib/night_writer message.txt braille.txt"
  end

  def self.display_write_message_to_stdout
    return "Created '#{ARGV[1]}' containing #{File.size(ARGV[0])} characters"
  end
end


if ARGV[0] != "message.txt" || ARGV[1] != "braille.txt"
  puts NightWriter.display_usage_message_to_stdout
  return
end

NightWriter.new
