require 'report'

describe Report do

  describe '#pass_tests' do
    it 'allows user to pass string of tests' do
      subject.pass_tests("Green")
      expect(subject.show_tests).to be_a String
    end

    it 'raises an error if the value is not a string' do
      expect{ subject.pass_tests 1 }.to raise_error "Error: Value must be a string"
    end
  end

  describe '#show_tests' do
    it 'initializes with tests as a string argument' do
      subject.pass_tests("Green")
      expect(subject.show_tests).to be_a String
    end

    it 'shows count for one test' do
      subject.pass_tests("Green")
      expect(subject.show_tests).to eq "Green: 1"
    end
  end

  describe '#filter' do
    it 'appends input tests into an array' do
      subject.pass_tests("Green")
      expect(subject.filter).to eq ["Green"]
    end

    it 'iterates over string to create array of tests' do
      subject.pass_tests("Green, Green")
      expect(subject.filter).to eq ["Green", "Green"]
    end
  end

  describe '#count_tests' do
    it 'tallies how many tests have been inputed' do
      subject.pass_tests("Green")
      expect(subject.count_tests).to eq 1
    end

    it 'tallies tests of same grade' do
      subject.pass_tests("Green, Green")
      expect(subject.show_tests).to eq "Green: 2"
    end
  end
end
