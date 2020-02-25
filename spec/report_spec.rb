require 'report'

describe Report do
  describe '#show_tests' do
    it 'initializes with tests as a string argument' do
      report = Report.new("")
      expect(report.show_tests).to be_a String
    end

    it 'shows count for one test' do
      report = Report.new("Green")
      expect(report.show_tests).to eq "Green: 1"
    end

    it 'tallies tests of same grade' do
      report = Report.new("Green, Green")
      expect(report.show_tests).to eq "Green: 2"
    end
  end

  describe '#filter' do
    it 'appends input tests into an array' do
      report = Report.new("Green") 
      expect(report.filter).to eq ["Green"]
    end

    it 'iterates over string to create array of tests' do
      report = Report.new("Green, Green")
      expect(report.filter).to eq ["Green", "Green"]
    end
  end

  describe '#count_tests' do
    it 'counts how many tests have been inputed' do
      report = Report.new("Green")
      expect(report.count_tests).to eq 1
    end
  end
end
