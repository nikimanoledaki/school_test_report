require 'report'

describe Report do
  describe '#showTests' do
    it 'initializes with tests as a string argument' do
      report = Report.new("")
      expect(report.showTests).to be_a String
    end

    it 'initializes with a string with one test' do
      report = Report.new("Green")
      expect(report.showTests).to eq "Green: 1"
    end

    # it 'tallies tests of same grade' do
    #   report = Report.new("Green, Green")
    #   expect(report.showTests).to eq "Green: 2"
    # end
  end

  describe '#filter' do
    it 'appends input tests into an array' do
      report = Report.new("Green") 
      expect(report.filter).to eq ["Green"]
    end
  end
end
