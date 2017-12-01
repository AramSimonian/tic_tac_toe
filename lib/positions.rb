class Positions

  attr_reader :positions

  DEFAULT_GRID_SIZE = 3

  def initialize(grid_size = DEFAULT_GRID_SIZE)
    grid_size = max_value(grid_size, DEFAULT_GRID_SIZE)
    @row = 0
    @col = 0
    @position_counter = 0

    @positions = {}
    @row.upto(grid_size - 1) {
      @col.upto(grid_size - 1) {
        @positions[((@position_counter).to_s).to_sym] = Position.new(row: @row, col: @col)
        @position_counter += 1
      }
    }
  end


  def max_value(a, b)
    a > b ? a : b
  end
end
