require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = 0
    
    string_array = self.split(/[.!?]/)
    string_array.each do |i|
      if i == ""
        count == count
      else 
      count+=1
      end 
    end 
    return count
  end
end