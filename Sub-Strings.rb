def substrings(word, dictionary)
  result = Hash.new(0) # Initialize a hash with default value 0

  word.downcase.split.each do |word_part|
    dictionary.each do |substring|
      if word_part.include?(substring.downcase)
        result[substring.downcase] += 1
      end
    end
  end

  result
end

# Example usage
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

puts substrings("below", dictionary) # => { "below" => 1, "low" => 1 }
puts substrings("Howdy partner, sit down! How's it going?", dictionary) 
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

