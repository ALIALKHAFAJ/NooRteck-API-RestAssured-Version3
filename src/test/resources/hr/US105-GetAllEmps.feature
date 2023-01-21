Feature: Get All Existing Employees API

  @GetAllExEmps
  Scenario Outline: Verify User able to retrieve ALL existing employees
    Given User set <apiName> <region> webservice api
    When User sends GET request
    Then User validates status code <statusCode>
    And User validates response body field
      | rows[<ID>].employee_id | rows[<ID>].first_name | rows[<ID>].last_name | rows[<ID>].job_id | rows[<ID>].phone_number |
      | <employee_id>          | <first_name>          | <last_name>          | <job_id>          | <phone_number>          |

    Examples: 
      | region  | apiName              | statusCode | employee_id | first_name | last_name | job_id  | phone_number | ID |
      | "scrum" | "Employee:GetAllEmp" | "200"      |         114 | Wilfredo   | Ward      | PU_MAN  | 751-331-6716 |  0 |
      | "scrum" | "Employee:GetAllEmp" | "200"      |         115 | Alexander  | Khoo      | PU_CLERK| 515.127.4562 |  1 |
      | "scrum" | "Employee:GetAllEmp" | "200"      |         119 | Kaitlyn    | Hoeger    | PU_CLERK | 349-957-2034|  3 |
