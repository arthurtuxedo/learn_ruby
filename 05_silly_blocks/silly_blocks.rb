def reverser
	words = yield.split(" ")
  words.map { |word| reverse_word(word) }.join(" ")
end

def reverse_word(word)
	word.reverse!
end

def adder(coefficient=1)
	yield+coefficient
end

def repeater(times=1)
	times.times { yield }
end
