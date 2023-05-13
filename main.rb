def substring(word, dictionary)
  dictionary.reduce(Hash.new(0)) do |result, string|
    if word.downcase.include?(string.downcase)
      result[string] = word.downcase.scan(string.downcase).length
    end
    result
  end
end