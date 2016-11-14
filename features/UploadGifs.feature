Feature: Upload Gifs to home page
  
  As a user
  So that I can put my own cooking gifs on the internet
  I would like to upload a cooking gif to the home page
 
Background: Gifs in database
  
  Given the following gifs exist:
  | title             | link                                                                | 
  | Obama             | http://gifrific.com/wp-content/uploads/2012/04/obama-skateboard.gif |
  | Jalapeno Poppers  | http://i.imgur.com/0YdDh9J.gifv                                     |
  | Vegan Quesadillas | http://i.imgur.com/uoojePh.gif                                      |
  | Ramen             | http://i.imgur.com/kqLu1y1.gif                                      |
  | Peck Dance        | https://m.popkey.co/501456/y6za0.gif                                |

Scenario: Upload Gifs to home page
  When I go to the upload page
  And I fill in "Title" with "Chicken Parm Lasagna"
  And I fill in "Link" with "https://giant.gfycat.com/SoreGleamingAlligatorsnappingturtle.gif"
  And I press "Upload"
  And I go to the home page
  Then I should see a gif called "Chicken Parm Lasagna"
  