def substrings(phrase, dict)
input = phrase.downcase
dictionary = dict.to_a
substrings = Hash.new
dictionary.each do |word|
	occurences = 0
	if input.include?(word)
		occurances = input.scan(/#{word}/).size
		substrings[word] = occurances
	end
end
puts "#{substrings}"
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)