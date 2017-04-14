def translate(sentence)
  words = sentence.split(" ")
  words.map { |word| translate_word(word) }.join(" ")
end

def num_consonants(word)
  vowels = ["a","e","i","o","u"]
  consonants = 0
  letters = word.split("")
  for letter in 0..2
    if !vowels.include?(letters[letter])
      consonants += 1
    else
      break
    end
    letter += 1
  end
  if word[0..2].include?("qu")
    consonants += 1
  end
  consonants
end

def translate_word(word)
  vowels = ["a","e","i","o","u"]
  new_word = ""
  first_letter = word[0]
  if num_consonants(word) == 0
    new_word = word
  elsif num_consonants(word) == 2
    second_letter = word[1]
    new_word = word[2..-1]
    new_word << first_letter
    new_word << second_letter
  elsif num_consonants(word) == 3
    second_letter = word[1]
    third_letter = word[2]
    new_word = word[3..-1]
    new_word << first_letter
    new_word << second_letter
    new_word << third_letter
  else
    new_word = word[1..-1]
    new_word << first_letter
  end
  new_word << "ay"
  return new_word
end
