class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    @cups.each_index do |i|
      next if i == 6 || i == 13
      4.times do
        @cups[i] << :stone
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    starting_stones = @cups[start_pos]
    # starting_stones_count = starting_stones.count
    @cups[start_pos] = []
    cup_index = start_pos
    until starting_stones.empty?
      cup_index += 1
      cup_index = 0 if cup_index == 14
      if cup_index == 6
        @cups[6] << starting_stones.pop if current_player_name == @name1
      elsif cup_index == 13
        @cups[13] << starting_stones.pop if current_player_name == @name2
      else
        @cups[cup_index] << starting_stones.pop
      end
    end
    render
    next_turn(cup_index)

  end


  def next_turn(ending_cup_idx)
    return :prompt if ending_cup_idx == 6 || ending_cup_idx == 13
    return :switch if @cups[ending_cup_idx].count == 1
    ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?(&:empty?) || @cups[7..12].all?(&:empty?)
  end

  def winner
    if @cups[6].count > @cups[13].count
      return @name1
    elsif @cups[6].count < @cups[13].count
      return @name2
    else
      :draw
    end


  end
end
