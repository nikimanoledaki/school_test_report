require 'report'

describe Report do
  describe '#showTests' do
    it 'initializes with tests as a string argument' do
      report = Report.new("")
      expect(report.showTests).to be_a String
    end

    it 'initializes with a string with one test' do
      report = Report.new("Green")
      expect(report.showTests).to eq "Green"
    end
  end
end
