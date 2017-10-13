class LRUCache
  def initialize
    @cache = []
    @size = size
  end

  def count
    @cache.count
  end

  def add(el)
    if @cache.include?(el)
      @cache.delete(el)
    elsif count == size
      @cache.shift
    end
    @cache << el
  end

  def show
    @cache.dup
  end

  private
  # helper methods

end
