def echo(words)
  return words
end

def shout(words)
  return words.upcase
end

def repeat(words,times=2)
  rep = ""
  times.times do
    rep += (words + " ")
  end
  rep.chop!
  return rep
end

def start_of_word(words,letters)
  return words[0..letters-1]
end

def first_word(words)
  return words.split[0]
end

def titleize(words)
  word_array = words.split
  word_array.each_with_index do |word,index|
    unless word == "and" || word == "the" && index>0 || word == "over"
        word.capitalize!
    end
  end
  return word_array.join ' '
end
