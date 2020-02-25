class Report

  attr_reader :tests

  def initialize(tests)
    @tests = tests
  end

  def showTests
    "#{@tests}: 1"
  end

  def filter
    [@tests]
  end

end
