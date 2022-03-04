require 'pry'
class NightWriter

  def initialize()
  end

  def display_usage_message_to_stdout
    puts "Usage ruby ./lib/night_writer message.txt braille.txt"
  end

#  handle = File.open(ARGV[0], "r")
end

night_writer = NightWriter.new

if ARGV[0] != "message.txt" || ARGV[1] != "braille.txt"
  night_writer.display_usage_message_to_stdout
end
