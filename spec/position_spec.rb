require File.join(File.dirname(__FILE__), '../lib/position')

describe Position do
  subject(:position) { described_class.new(row: 0, col: 0) }
  describe "#initialize" do
    it "has a nil value when initialized" do
      expect(position.value).to be_nil
    end
  end
end
