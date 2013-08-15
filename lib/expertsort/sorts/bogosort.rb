module Expertsort
  module BogoSort
    def bogosort
      self.dup.bogosort!
    end

    def bogosort!
      self.shuffle! while !sorted?
      self
    end

    def sorted?
      each_cons(2).all? { |a, b| (a <=> b) <= 0 }
    end
  end
end