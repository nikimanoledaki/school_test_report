# School reports


## Getting started

```
$ git clone https://github.com/nikimanoledaki/school_test_report.git
$ bundle install
```

## How to use
Invoke IRB and the main file at the same time with the following command:
```
$ irb -r ./lib/report.rb
```

## How to test
Rub the rspec tests:
```
$ rspec
```

## Specfication

### Requirements
* User inputs many students' tests. Data type is string of comma-separated values e.g. "Green, Green, Amber, Red, Green"

* Create frequency count of how often green, amber, and red occurred. 

### Acceptance Criteria
```
$ report.pass_tests("Green")
$ report.show_tests 
=> "Green: 1"

$ report.pass_tests(1)
$ report.show_tests
=> Error: Not a string

$ report.pass_tests("Green, Green, Amber, Red, Green")
$ report.show_tests 
=> "Green: 3\nAmber: 1\nRed: 1" 
```
