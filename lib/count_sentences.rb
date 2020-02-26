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
    sentence = self.split(/[.!?]/)
    sentence.delete_if do |word_space|
      word_space.empty?
    end 
    sentence.count 
  end 
  
  
end 