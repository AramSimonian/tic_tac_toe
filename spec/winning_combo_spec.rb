require File.join(File.dirname(__FILE__), '../lib/winning_combo')

describe Winning_combo do
  subject(:winning_combo) { described_class.new }
  describe "#is_complete?" do
    it "returns false if its positions are not all Xs or all Os" do
      expect(winning_combo.is_complete?).to be false
    end
  end
end
