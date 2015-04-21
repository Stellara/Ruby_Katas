# This is an exercise to find a "secret message" in a paragraph. A string is part of the secret message when it has two or more occurences within the paragraph.

class FindSecret 
  attr_reader :message

  def initialize(paragraph)
    @message = paragraph
  end 

  def paragraph_array 
    @message.scan(/\w+/).each {|word| word.downcase! }
  end 

  def find_duplicates
    paragraph_array.select {|word| paragraph_array.count(word) > 1 }.uniq
  end

  def decode
    find_duplicates.join(' ')
  end 
end 