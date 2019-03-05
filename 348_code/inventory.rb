
def read_file(str)
    temp = str.split(": ")
    temp.map do |element|
        id = element.match(/\A(\d{8})\z/)
        next unless matches
        matches[1]
    end.compact
end

text_file = []

if ARGV.length != 1
    puts "We need exactly one parameter. The name of a file."
    exit;
end

filename = ARGV[0]
puts "Going to open '#{filename}'"

fh = open filename

while (line = fh.gets)
    text_file.
end

fh.close
