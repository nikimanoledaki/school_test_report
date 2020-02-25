class Report

  attr_reader :tests

  def initialize(tests)
    @tests = tests
  end

  def showTests
    @tests
  end

end
