class Report

  attr_reader :tests

  def pass_tests(tests)
    fail "Error: Value must be a string" unless tests.is_a?(String)
    @tests = tests
  end

  def show_tests
    "Green: #{count_tests["Green"]}\n Amber: #{count_tests["Amber"]}\n Red: #{count_tests["Red"]}"
  end

  def filter
    @tests.split(", ")
  end

  def count_tests
    count = {"Green" => filter.count("Green"),
             "Amber" => filter.count("Amber"),
             "Red" => filter.count("Red")
    }
  end

end
