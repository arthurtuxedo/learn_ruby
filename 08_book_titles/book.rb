class Book
attr_reader :title
  def initialize
    @title = title
  end

  def title=(new_title)
    words = new_title.split(" ")
    first_word = words[0].object_id
    @title = words.map { |word| capitalize_word(word, first_word) }.join(" ")
  end

  def capitalize_word(word, first_word)
    exceptions = ["the","a","an","and","in","to","of"]
    if !exceptions.index(word) || word.object_id == first_word
      word.capitalize
    else
      word
    end
  end
end
