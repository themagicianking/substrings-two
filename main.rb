def substring(word, dictionary)
  dictionary.reduce(Hash.new(0)) do |result, string|
    if word.downcase.include?(string.downcase)
      result[string] = word.downcase.scan(string.downcase).length
    end
    result
  end
end

test = ["below"]
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substring("Howdy partner, sit down! How's it going?", dictionary)