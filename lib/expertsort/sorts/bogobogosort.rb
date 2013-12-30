module Expertsort
  module BogoBogoSort
    def bogobogosort
      self.dup.bogobogosort!
    end

    def bogobogosort!(*arr)
      arr = (arr.length == 1) ? arr[0] : self
      is_sorted = -> (arr) { arr.each_cons(2).all? { |a, b| (a <=> b) <= 0 } }

      while !is_sorted.call(arr)
        arr.shuffle!
        arr.bogobogosort!(dup[0..-2])
      end

      arr
    end
  end
end