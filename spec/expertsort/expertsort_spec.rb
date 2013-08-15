require 'expertsort'

describe Array do
  before do
    @unsorted = [5, 4, 3, 1, 2]
    @sorted = @unsorted.sort
  end

  describe 'BogoSort' do
    it 'sorts' do
      expect(@unsorted.bogosort).to eq(@sorted)
    end

    it 'has a destuctive method' do
      array = @unsorted.dup
      old_object_id = array.object_id
      array.bogosort!
      expect(old_object_id).to eq(array.object_id)
    end
  end

  describe 'StoogeSort' do
    it 'sorts' do
      expect(@unsorted.stoogesort).to eq(@sorted)
    end

    it 'has a destuctive method' do
      array = @unsorted.dup
      old_object_id = array.object_id
      array.stoogesort!
      expect(old_object_id).to eq(array.object_id)
    end
  end

  describe 'SleepSort' do
    it 'sorts' do
      expect(@unsorted.sleepsort).to eq(@sorted)
    end

    it 'has a destuctive method' do
      array = @unsorted.dup
      old_object_id = array.object_id
      array.sleepsort!
      expect(old_object_id).to eq(array.object_id)
    end

    it 'takes a long time' do
      start_time = Time.now
      @unsorted.sleepsort
      expect(Time.now).to be > (start_time + @unsorted.max)
    end

    it 'raises an error if there is a negative element' do
      bad_data = [1, 2, 0, -1, -2]
      expect{bad_data.sleepsort}.to raise_error(RangeError, 'Cannot sleep sort an array with negative elements: -1')
    end
  end

  describe 'SlowestSort' do
    it 'sorts' do
      expect(@unsorted.slowestsort).to eq(@sorted)
    end

    it 'has a destuctive method' do
      array = @unsorted.dup
      old_object_id = array.object_id
      array.slowestsort!
      expect(old_object_id).to eq(array.object_id)
    end

    it 'takes a very long time' do
      start_time = Time.now
      @unsorted.slowestsort
      sleep(1)
      expect(Time.now).to be > start_time + 1
    end
  end
end