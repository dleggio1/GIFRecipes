Feature: create account
  
  As a user
  I want to create an account 
  so that i can upload gifs
 
 
Scenario: 
  When I go to the sign up page
  And I fill in "user_email" with "a@bc.com"
  And I fill in "user_password" with "123456"
  And I fill in "user_password_confirmation" with "123456"
  And I press "Sign up"
  Then I should see "Logged in as a@bc.com"
  
