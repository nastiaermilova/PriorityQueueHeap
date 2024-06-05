require_relative '../lib/binaryheap'
require 'test/unit'

class TestMerge < Test::Unit::TestCase
  def test1
    pq1 = PriorityQueueHeap.new
    pq2 = PriorityQueueHeap.new
    pq1.push(3)
    pq1.push(5)
    pq2.push(4)
    pq2.push(6)
    pq1.merge(pq2)
    expect(pq1.size).to eq(4)
    expect(pq1.top).to eq(3)
  end

end