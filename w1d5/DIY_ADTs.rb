class Stack
  def initialize
    @stack = Array.new
  end

  def add(el)
    @stack.push(el)
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end

end

class Queue
  def initialize
    @queue = Array.new
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def show
    @queue
  end

end

class Map
  def initialize
    @map = Array.new
  end

  def assign(el, value)
    old_el = false
    @map.map do |sub_array|
      if sub_array[0] == el
        sub_array[1] = value
        old_el = true
        break
      end
    end
    @map.push([el, value]) unless old_el
  end

  def remove(el)
    @map.each_index do |i|
      if @map[i][0] == el
        @map.delete_at(i)
        break
      end
    end
  end

  def lookup(el)
    @map.map do |sub_array|
      return sub_array[1] if sub_array[0] == el
    end
  end

  def show
    @map
  end

end
