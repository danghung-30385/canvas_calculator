Feature: Test online calculator scenarios

  Scenario Outline: Test addition (x + y) functionalities
    Given Open chrome browser and start application
    When I enter following values to calculate
      | value1   | <x>        |
      | value2   | <y>        |
      | operator | <operator> |
    Then I should be able to verify the result of testcase "<tc_description>" on applitool
    Examples: 
      | tc_description                                                           | x  | y  | operator |
      | Verify addition result when x is equal to y                              |  0 | 0  | +				|
      | Verify addition result when x or y is equal to 0                         |  0 |  1 | +       	|
      | Verify addition result when x and y are greater than 0                   |  1 |  1 | +        |
      | Verify addition result when x and y are less than 0                      | -1 | -14| +        |
      | Verify addition result when x is postive number and y is negative number | -1 |  1 | +        |
      | Verify addition result when x or y is a float number										 | 18.22 |  1 | +     |
      | Verify addition result when x and y are float numbers									 | -13.22 | 18.22 | + |
      
  Scenario Outline: Test subtraction (x - y) functionalities
    Given Open chrome browser and start application
    When I enter following values to calculate
      | value1   | <x>        |
      | value2   | <y>        |
      | operator | <operator> |
   	Then I should be able to verify the result of testcase "<tc_description>" on applitool
    Examples: 
      | tc_description                                                           | x  | y  | operator |
      | Verify addition result when x is equal to y                              |  3 | 3  | -				|
      | Verify addition result when x is equal 0 and y is greater than 0         |  0 |  1 | -       	|
      | Verify addition result when x or y is equal 0    												 |  13|  0 | -        |
      | Verify addition result when x and y are less than 0                      | -1 | -14| -        |
      | Verify addition result when x is postive number and y is negative number | -1 |  1 | -        |
      | Verify addition result when x or y is a float number										 | 18.22 |  1 | -     |
      | Verify addition result when x and y are float numbers									 	 | -13.22 | 18.22 | - |
      
 Scenario Outline: Test division (x / y) functionalities
    Given Open chrome browser and start application
    When I enter following values to calculate
      | value1   | <x>        |
      | value2   | <y>        |
      | operator | <operator> |
		Then I should be able to verify the result of testcase "<tc_description>" on applitool
    Examples: 
      | tc_description                                                           | x  | y  | operator |
      | Verify addition result when x is equal to y                              |  3 | 3  | /				|
      | Verify addition result when x is equal 0 and y is not equal to 0         |  0 |  1 | /       	|
      | Verify addition result when y is equal 0    														 |  13|  0 | /        |
      | Verify addition result when x and y are less than 0                      | -1 | -14| /        |
      | Verify addition result when x is postive number and y is negative number | -1 |  2 | /        |
      | Verify addition result when x or y is a float number										 | 1  |  -0.5 | /     |
      | Verify addition result when x and y are float numbers									 	 | 6.5 | 0.5 | / 			|