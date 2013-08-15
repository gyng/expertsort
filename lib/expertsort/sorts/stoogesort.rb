module Expertsort
  module StoogeSort
    # Straight up reimplementation of the algorithm on Wikipedia.
    def stoogesort
      self.dup.stoogesort!
    end

    def stoogesort!(i = 0, j = self.length-1)
      if self[j] < self[i]
        self[i], self[j] = self[j], self[i]
      end

      if j - i + 1 >= 3
        t = (j - i + 1) / 3
        stoogesort!(i, j - t)
        stoogesort!(i + t, j)
        stoogesort!(i, j - t)
      end

      self
    end
  end
end