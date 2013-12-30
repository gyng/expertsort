require "expertsort/version"

require 'expertsort/sorts/bogosort'
require 'expertsort/sorts/bogobogosort'
require 'expertsort/sorts/sleepsort'
require 'expertsort/sorts/slowestsort'
require 'expertsort/sorts/stoogesort'

class Array
  include Expertsort::BogoSort
  include Expertsort::BogoBogoSort
  include Expertsort::SleepSort
  include Expertsort::SlowestSort
  include Expertsort::StoogeSort
end