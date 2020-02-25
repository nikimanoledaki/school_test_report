class Report

  attr_reader :tests

  def pass_tests(tests)
    fail "Error: Value must be a string" unless tests.is_a?(String)
    @tests = tests
  end

  def show_tests
    "Green: #{count_tests}"
  end

  def filter
    @tests.split(", ")
  end

  def count_tests
    filter.count
  end

end
