# anagrams are just the same letters rearranged
# so split into an array, sort the array alphabetically, and they should both be equal
# easy peasy?
def are_anagrams(firstword, secondword)
  firstword.downcase.split("").sort.join == secondword.downcase.split("").sort.join
end

# Let's make it as Unix like as possible for now, man it would be great to take piped in input too..
if ARGV.count != 2
  puts "anagram.rb takes two arguments, a word to search, and a file to search through for matches"
  puts "Example usage: ruby anagram.rb spare input.txt"
end

targetWord = ARGV[0]
input = File.open(ARGV[1]).read
input.each_line do |line|
  if are_anagrams(targetWord, line.chomp)
       puts line
  end
end
  




