module Messageable

  def display_usage_message_to_stdout
    if $0.include? "writer"
      "Usage ruby ./lib/night_writer message.txt braille.txt"
    elsif $0.include? "reader"
      "Usage ruby ./lib/night_reader braille.txt original_message.txt"
    else
      "no such ruby program"
    end
  end

  def display_write_message_to_stdout
    "Created '#{ARGV[1]}' containing #{File.size(ARGV[1])} characters"
  end
#  File.basename(filename, File.extname(filename))
end
