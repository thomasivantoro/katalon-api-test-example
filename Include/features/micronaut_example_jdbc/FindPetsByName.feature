Feature: Find Pets By Name

  Scenario Outline: [Positive Test] - Find Pets By Name
    Given API is available
    When I request find pet by name <pet_name>
    Then I get response code 200
    And The pet details as below:
      | pet_name   | pet_type   |
      | <pet_name> | <pet_type> |

    Examples: 
      | pet_name | pet_type |
      | Dino     | DOG      |
      | Hoppy    | DOG      |
