class String
  
  def is_a_number?
    self.to_i.to_s == self || self.to_f.to_s == self
  end  
  
end

class Float
  def is_a_number?
    true
  end
end

class Fixnum
  def is_a_number?
    true
  end
end

class Array
  def shuffle
    sort_by{Kernel.rand}
  end
end
