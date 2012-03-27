Feature: Gasoline

  Scenario: Gasoline page

    Given opened "http://gasprices.herokuapp.com/" page
    Then I should see the current date
    Then I should see the KLO table
    Then I should see the OKKO table