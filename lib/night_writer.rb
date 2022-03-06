require './lib/messageable'
require './lib/build_braille_letter'
include Messageable

if ARGV[0] != "message.txt" || ARGV[1] != "braille.txt"
  puts display_usage_message_to_stdout
  return
end

build_braille = BuildBrailleLetter.new(File.read(ARGV[0]).delete("\n").chomp)
encode_message = build_braille.change_to_braille
File.write("braille.txt", encode_message, mode: "w")
puts display_write_message_to_stdout
