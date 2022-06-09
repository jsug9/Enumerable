require_relative 'my_enumerable'

# Define Class MyList
class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    @list.each do |element|
      yield(element)
    end
  end

  def to_s
    @list.join(', ')
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)
# => <MyList: @list=[1, 2, 3, 4]>
print list

# Test #all?
print list.all? {|e| e < 5}
# => true
print list.all? {|e| e > 5}
# => false

# Test #any?
print list.any? {|e| e == 2}
# => true
print list.any? {|e| e == 5}
# => false

# Test #filter
print list.filter {|e| e.even?}
# => [2, 4]
