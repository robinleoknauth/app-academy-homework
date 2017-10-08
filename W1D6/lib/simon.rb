class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false
  end

  def play
    until @game_over
      take_turn
      # system("clear")
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 1
      system("clear")
    end
  end

  def guess
    gets.chomp.split(" ").map(&:downcase)
  end

  def require_sequence
    puts "Repeat the colors by entering the first letter of each on a new line."
    @seq.each do |color|
      user_color = gets.chomp
      if color[0] != user_color
        @game_over = true
        break
      end
    end
    sleep 1
  end

  def add_random_color

    @seq << COLORS.sample
  end

  def round_success_message
    puts @seq
    puts "Good job!"
  end

  def game_over_message
    puts @seq
    puts "You lost!"
  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end
end
