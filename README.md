# School reports

## Specfication

## Requirements
* User inputs many students' tests. Data type is string of comma-separated values e.g. "Green, Green, Amber, Red, Green"

* Create frequency count of how often green, amber, and red occurred. 

* Produce count 

## Acceptance Criteria
```
$ report.new("Green")
$ report.show_tests 
=> "Green: 1"

$ report.new("Green, Green, Amber, Red, Green")
$ report.show_tests 
=> "Green: 3\nAmber: 1\nRed: 1" 

$ report.new(1)
$ report.show_tests
=> Error: Not a string
```
