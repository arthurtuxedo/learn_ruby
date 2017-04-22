class Book
  attr_reader :title
  def initialize
    @title = title
  end

  def title=(new_title)
    words = new_title.split(" ")
    @title = words.each_with_index.map { |word, index| capitalize_word(word, index==0) }.join(" ")
  end

  def capitalize_word(word, first_word)
    exceptions = ["the","a","an","and","in","to","of"]
    if !exceptions.index(word) || first_word
      word.capitalize
    else
      word
    end
  end
end
