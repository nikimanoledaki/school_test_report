# School reports

## Specfication

## Requirements
* User inputs many students' tests. Data type is string of comma-separated values e.g. "Green, Green, Amber, Red, Green"

* Create frequency count of how often green, amber, and red occurred. 

* Produce count 

## Acceptance Criteria

$ report.new("Green")
$ report.showTests 
=> "Green: 1"


Report("Green, Green, Amber, Red, Green") => "Green: 3\nAmber: 1\nRed: 1" 
Report(1) => "Error"
Report("") => ("Green, Green, Amber, Red, Green")
