Feature: Sign Up Form

  As a celery fan
  I would like to create an account with farmdrop
  So I can order lots of tasty celery straight from the field
  Celery which isn't 90% pesticide

  Scenario Outline: Successful account creation
    Given I am on farmdrop's sign-up page, on a <Breakpoint> device
    When I enter a valid email address and password
    And enter a valid postcode
    And click the submit button
    Then my account is successfully created, and I am logged in
    Examples:
      | Breakpoint |
      | Desktop    |
  @wip
    Examples:
      | Tablet |
      | Mobile |

  @wip
  Scenario Outline: Try to create account with existing email address
    Given I have already created an account with farmdrop
    When I try to create another account with the same email address, on a <Breakpoint> device
    Then the account is not created successfully
    And I see the following error message:
      | Error Message                |
      | Email has already been taken |
    Examples:
      | Breakpoint |
      | Desktop    |
      | Tablet     |
      | Mobile     |

  @wip
  Scenario: Sign up with facebook
#   didn't try out this scenario, because it doesn't work in the staging
#  environment, and would have required me to create a dummy account to
#  try it in live.

  @wip
  Scenario Outline: Enter invalid details
    Given I am on farmdrop's sign-up page, on a <Breakpoint> device
    When I enter invalid details
      | Email   | Password   | Postcode   |
      | <Email> | <Password> | <Postcode> |
    Then the account is not created
    And the folllowing error message is dispalyed
    Examples:
      | Breakpoint | Email                  | Password    | Postcode | Error                                           |
      | Desktop    | NeedADotSomething@Here | Password123 | SE16 3EG | Email is invalid                                |
      | Tablet     | NeedADotSomething@Here | Password123 | SE16 3EG | Email is invalid                                |
      | Mobile     | NeedADotSomething@Here | Password123 | SE16 3EG | Email is invalid                                |
      | Desktop    | valid@email.com        | weak        | SE16 3EG | Password is too short (minimum is 6 characters) |
      | Tablet     | valid@email.com        | weak        | SE16 3EG | Password is too short (minimum is 6 characters) |
      | Mobile     | valid@email.com        | weak        | SE16 3EG | Password is too short (minimum is 6 characters) |
      | Desktop    | valid@email.com        | Password123 | 111      | Please match the requested format               |
      | Tablet     | valid@email.com        | Password123 | 111      | Please match the requested format               |
      | Mobile     | valid@email.com        | Password123 | 111      | Please match the requested format               |
