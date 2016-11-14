Feature: Recipe Page

    As an amateur chef
    I would like to be able to click on GIFs and see each recipe with it's own page
    so I can find out more about the recipe I want to follow.

Background: Gifs in database
  
  Given the following gifs exist
  | title             | link                                                                | 
  | Vegan Quesadillas | http://i.imgur.com/uoojePh.gif                                      |
 
 Scenario: Recipe page has steps and tags
  When I go to the home page
  And I follow "Obama"
  Then I should see "Blend 2 minutes"
  And I should see "Mexican"
  
 Scenario: Recipe upload page has text box and tag box
   When I go to the upload page
   And I fill in "Steps" with "1. Make the chicken"
   And I fill in "Tags" with "Chicken"
   And I fill in "Title" with "Chicken Parm Lasagna"
  And I fill in "Link" with "https://giant.gfycat.com/SoreGleamingAlligatorsnappingturtle.gif"
  And I press "Upload"
  And I go to the home page
  And I follow "Chicken Parm Lasagna" 
  Then I should see "1. Make the chicken"
  And I should see "Chicken"