Feature: check returned employees by API

  Background:
    * url 'http://dummy.restapiexample.com'
    * header Accept = 'application/json'
    *  def reqJson = read('employee.json') 
    * print reqJson
  Scenario: get list of all employees
    Given path '/api/v1/employees'
    When method GET
    Then status 200
    
   Given path '/api/v1/create'
   And request {"name":"Shbfwum","salary":"123","age":"23"}
   When method POST
   Then status 200
   
   Given path '/api/v1/update/23'
   And request {"salary":"100123","age":"23"}
   When method PUT
   Then status 200
   
   Given path '/api/v1/delete/5'
   When method DELETE
   Then status 200