require "ruby-dictionary"
require_relative("lib/words.rb")

dictionary = Dictionary.from_file('words')


words = Words.new("cat", "dog")
words.solvers