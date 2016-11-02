Feature: Grid of Gifs on home page

  As a user 
  So that I can easily browse what the site has to offer
  I would like to see a grid of gifs on the home page
  
Background: Gifs in database
  
  Given the following gifs exist:
  | title             | link                                                                | 
  | Obama             | http://gifrific.com/wp-content/uploads/2012/04/obama-skateboard.gif |
  | Jalapeno Poppers  | http://i.imgur.com/0YdDh9J.gifv                                     |
  | Vegan Quesadillas | http://i.imgur.com/uoojePh.gif                                      |
  | Ramen             | http://i.imgur.com/kqLu1y1.gif                                      |
  | Peck Dance        | https://m.popkey.co/501456/y6za0.gif                                |

Scenario: Grid of Gifs on Home Page
  When I go to the home page
  Then I should see a gif called "Obama"
  And I should see a gif called "Jalapeno Poppers"
  
  