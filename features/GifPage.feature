Feature: Recipe Page

    As an amateur chef
    I would like to be able to click on GIFs and see each recipe with it's own page
    so I can find out more about the recipe I want to follow.

Background: Gifs in database
  
  Given the following gifs exist
  | title             | link                                                                | recipe            | all_tags      |
  | Obama             | http://gifrific.com/wp-content/uploads/2012/04/obama-skateboard.gif | "Blend 2 minutes" | "Mexican" |
  | Jalapeno Poppers  | http://i.imgur.com/0YdDh9J.gifv                                     |                   |           |
  | Vegan Quesadillas | http://i.imgur.com/uoojePh.gif                                      |                   |           |
  | Ramen             | http://i.imgur.com/kqLu1y1.gif                                      |                   |           |
  | Peck Dance        | https://m.popkey.co/501456/y6za0.gif                                |                   |           |
 
 Scenario: Recipe page has steps and tags
  When I go to the home page
  And I follow "Obama"
  Then I should see "Blend 2 minutes"
  And I should see "Mexican"
  
 Scenario: Recipe upload page has text box and tag box
   When I go to the upload page
   And I fill in "Recipe" with "1. Make the chicken"
   And I fill in "All tags" with "Chicken"
   And I fill in "Title" with "Chicken Parm Lasagna"
  And I fill in "Link" with "https://giant.gfycat.com/SoreGleamingAlligatorsnappingturtle.gif"
  And I press "Upload"
  And I go to the home page
  And I follow "Chicken Parm Lasagna" 
  Then I should see "1. Make the chicken"
  And I should see "Chicken"