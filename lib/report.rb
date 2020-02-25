class Report

  attr_reader :tests

  def initialize(tests)
    @tests = tests
  end

  def show_tests
    "#{@tests}: #{count_tests}"
  end

  def filter
    @tests.split(", ")
  end

  def count_tests
    filter.count
  end

end
