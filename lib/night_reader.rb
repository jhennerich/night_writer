require './lib/messageable'
require './lib/build_from_braille_to_letter'
include Messageable

if ARGV[0] != "braille.txt" || ARGV[1] != "original_message.txt"
  puts display_usage_message_to_stdout
  return
end

build_letter = BuildFromBraille.new(File.read(ARGV[0]).chomp)
decoded_message = build_letter.braille_to_letter.join
File.write("original_message.txt", decoded_message, mode: "w")
puts display_write_message_to_stdout
