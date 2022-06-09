module MyEnumerable
  def all?
    each do |element|
      return false unless yield(element)
    end
    true
  end

  def any?
    each do |element|
      return true if yield(element)
    end
    false
  end

  def filter
    result = []
    each do |element|
      result << element if yield(element)
    end
    result
  end

  def max
    max = nil
    each do |element|
      max = element if max.nil? || element > max
    end
    max
  end

  def min
    min = nil
    each do |element|
      min = element if min.nil? || element < min
    end
    min
  end

  def sort
    result = []
    each do |element|
      result << element
    end
    result.sort
  end
end
