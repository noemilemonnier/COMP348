def HID_num(str)
        str.split(" ").each do |element|
            matches = element.match(/\A[A-Z]{4}(\d{8})\z/)
            puts matches[1] if matches
        end
end

if ARGV.length != 1
    puts "We need exactly one parameter. The name of a file."
    exit;
end

filename = ARGV[0]
puts "Going to open '#{filename}'"

fh = open filename

while (line = fh.gets)
    HID_num(line)

end

fh.close

