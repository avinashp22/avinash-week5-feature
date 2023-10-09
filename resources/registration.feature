Feature: Nopcommerce Registration

  As a User I want to check the Register functionality of Nopcommerce website

  Background: I am on Nopcommerce Registration page
    Given 	I open Google Chrome Browser
    When	I open the URL https://demo.nopcommerce.com/register
    Then 	I will be on the Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of the registration page
  When  I enter first name "<FirstName>"
  And   I enter last name "<LastName>"
  And   I enter Email address "<Email>"
  And   I enter Password "<Password>"
  And   I enter Confirm Password "<ConfirmPassword>"
  And   Then Click on the Register button
  Then  I can see an error message "<ErrorMessage>"
  And   I am unable to register

    Examples:
      |FirstName    |LastName  |Email           |Password|ConfirmPassword |ErrorMessage              			     |
      |""	        |bakshi    |bakshi@gmail.com|456897  |456897          |please enter First Name     			     |
      |Rohan	    |""	       |bakshi@gmail.com|456897  |456897  	      |please enter Last Name      			     |
      |Rohan        |bakshi    |""			    |456897  |456897  		  |please enter valid Email   			     |
      |Rohan	    |bakshi    |bakshi@gmail.com|""      |456897		  |password is required              		 |
      |Rohan        |bakshi    |bakshi@gmail.com|456897  |""			  |confirm password is required              |
      |Rohan        |bakshi    |bakshi@gmail.com|456897  |45689			  |password and confirm password do not match|
      |Rohan        |bakshi    |bakshi@gmail.com|45689   |""  			  |minimum 6 character password is required  |
      |""		    |""		   |""			    |""	     |""			  |Mandatory (*) filed is required           |

  Scenario: I should be able to select any one of the radio buttons from Gender Label on the Personal Details section
    Given 	I am on Gender label of Your Personal detail section
    When 	I select Male radio button
    And	 	I select Female radio button
    Then 	I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day, Month and Year from drop down list from the Date of birth field
    Given 	I am on Date of Birth field of Your Personal Detail section
    When  	I select day "<Day>"
    And 	I select month "<Month>"
    And 	I select Year "<Year>"
    Then 	I am able to select Day, Month and Year from drop down list

    Examples:
    |Day | Month    | Year|
    |11  | November | 1989|

  Scenario: I should be able to check and uncheck the Newsletter box in the Options section
    Given 	I am on Newsletter label in the Options section
    When 	I click on Newsletter checkbox
    And 	I click on Newsletter checkbox again
    Then 	I was able to check and uncheck the box next to Newsletter label

  Scenario: I should be able to register with valid mandatory (*) field data on registration page
    When 	I enter First name "Rohan"
    And	 	I enter Last name "Bakshi"
    And 	I enter Email "bakshi@gmail.com"
    And 	I enter Password "456897"
    And 	I enter Confirm Password "456897"
    And 	I click on Register button
    Then 	I was able to register successfully

