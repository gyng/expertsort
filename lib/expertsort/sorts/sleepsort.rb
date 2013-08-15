module Expertsort
  module SleepSort
    def sleepsort
      sorted = []
      threads = []
      semaphore = Mutex.new

      # Reduce potential impact of thread creation time by joining them when all threads have been created
      self.each do |e|
        raise RangeError, "Cannot sleep sort an array with negative elements: #{e}" if e.to_i < 0
        threads << Thread.new do
          sleep e.to_i
          semaphore.synchronize { sorted << e.to_i }
        end
      end

      threads.each { |t| t.join }
      sorted
    end

    def sleepsort!
      self.replace(sleepsort)
    end
  end
end