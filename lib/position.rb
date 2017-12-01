class Position
  attr_reader :row, :col, :value

  def initialize(params)
    @row = params[:row]
    @col = params[:col]
    @value = nil
  end


end
