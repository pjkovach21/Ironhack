puts "what is the source file source1.txt or  source2.txt"
source_file = gets.chomp
puts "what would like to call the destination file"
destination_file = gets.chomp
source_file_contents = IO.read(source_file)
# need a litte more explanaiton on IO.read/write
IO.write("#{destination_file}","#{source_file_contents}")
