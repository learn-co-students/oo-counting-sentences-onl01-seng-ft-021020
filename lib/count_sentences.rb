require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    end
    if !self.end_with?(".")
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    end
    if !self.end_with?("?")
      return false
    end

  end

  def exclamation?
    if self.end_with?("!")
      return true
    end
    if !self.end_with?("!")
      return false
    end


  end

  def count_sentences
    array2 = Array.new
    #array1 = Array.new
    #self.chars {|x| array1 << x }

    count = 0
    sen_end = 0

    array2 << self.split()
    return array2
    binding.pry

    while count != array2.length
      array2_index = array2[count]
      array2_index..end_with?(".")
        sen_end += 1
      array2_index..end_with?("!")
        sen_end += 1
      array2[count]..end_with?("?")
        sen_end += 1
      count += 1
    end
    return sen_end

  end
end