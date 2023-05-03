Feature: To test login page

Background: 
    Given: I am on "welcome_screen" page of TasteBudz App

# Sucessful login
Scenario: Acess the "mainpage" page
    When I tap the "Log in" button
    And I enter "example@gmail.com" into the email_controller field
    And I enter "example" into the password_controller field
    And I tap the "Continue" button
    And I tap the "Start" button
    Then confirmation should contain "Welcome back,"


# Incorrect login credentials
Scenario: Error on login
    When I tap the "Log in" button
    And I enter "example2@gmail.com" into the email_controller field
    And I enter "example" into the password_controller field
    Then confirmation should cointain "There is no user record corresponding to this identifier."

    
