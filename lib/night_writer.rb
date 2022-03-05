require 'pry'
require './lib/build_braille_letter'
require './lib/file_interaction'

class NightWriter

  def initialize()
    write_file = BuildBrailleLetter.new(File.read(ARGV[0]).chomp).change_to_braille
    file_interaction_engine = FileInteraction.new
    if file_interaction_engine.write_to_output_file(write_file)
      puts NightWriter.display_write_message_to_stdout
    end
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
