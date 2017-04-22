class Dictionary
  def initialize(definitions = {})
    @definitions = definitions
  end

  def entries
    @definitions.each { |word, defition| {word: defition} }
  end

  def add(entry)
    if entry.is_a?(String)
      @definitions.merge!({"#{entry}" => nil})
    else
      @definitions.merge!(entry)
    end
  end

  def keywords
    @definitions.keys.sort_by { |k,v| k }
  end

  def include?(entry)
    @definitions.has_key?(entry)
  end

  def find(entry)
    @definitions.select { |k,v| k.start_with? entry }
  end

  def printable
    # Not sure where to begin on this, will ask later
    @definitions.each do |word, defition|
      {word: defition} }.sort_by { |k,v| k }
    end
  end
end
