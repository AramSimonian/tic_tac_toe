require File.join(File.dirname(__FILE__), '../lib/positions')

describe Positions do
  let(:default_number_of_positions) { Positions::DEFAULT_GRID_SIZE**2 }

  let(:below_default_grid) { Positions::DEFAULT_GRID_SIZE - 1 }
  let(:above_default_grid) { Positions::DEFAULT_GRID_SIZE + 1 }
  subject(:positions) { described_class.new }

  describe "#initialize" do
    subject(:positions_no_size) { described_class.new }
    subject(:positions_below_default_size) { described_class.new(below_default_grid) }
    subject(:positions_above_default_size) { described_class.new(above_default_grid) }

    it "returns a grid of the default size if no size is specified" do
      expect(positions_no_size.positions.count).to eq (default_number_of_positions)
    end
    it "returns a grid of the default size if a size below the default is specified" do
      expect(positions_below_default_size.positions.count).to eq default_number_of_positions
    end
    it "returns a grid of the specified size if that size above the default" do
      expect(positions_above_default_size.positions.count).to eq above_default_grid**2
    end
  end
end
