class Fixnum
  def in_words
    units = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    units[self] if self < 20
    if self >= 20
      decile = self / 10
      digit = self % 10
      tens[decile] + " " + units[digit]
    end
  end
end
