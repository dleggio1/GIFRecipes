Feature: Search
  
    As a user,
    I would like to search for gifs,
    So that I can find gifs to my liking.
    
Background: Gifs in database
  
  Given the following gifs exist
  | title             | link                                                                | recipe            | all_tags  |
  | Obama             | http://gifrific.com/wp-content/uploads/2012/04/obama-skateboard.gif | "Blend 2 minutes" | "Mexican" |
  | Jalapeno Poppers  | http://i.imgur.com/0YdDh9J.gifv                                     |                   |           |
  | Vegan Quesadillas | http://i.imgur.com/uoojePh.gif                                      |                   |           |
  | Ramen             | http://i.imgur.com/kqLu1y1.gif                                      |                   |           |
  | Peck Dance        | https://m.popkey.co/501456/y6za0.gif                                |                   |           |

  Scenario: Search for a gif
    When I go to the home page,
    And I fill in "Search" with "Obama"
    And I press "Search"
    Then I should see a gif called "Obama"
    And I should not see a gif called "Jalapeno Poppers"