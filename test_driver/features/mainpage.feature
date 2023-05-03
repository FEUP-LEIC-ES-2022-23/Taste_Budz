Feature: To test main page feature

Background:
    Given: I am on "main" page of TasteBudz App


# Viewing friends' restaurant activity
Scenario: To view friends restaurant activity
    When I tap on "FeedScreen" button
    Then confirmation shoud contain "Foodie Budz"


# Liking a friend's activity
Scenario: To increase the "Like post" count
    When I tap on "FeedScreen" button
    And I tap the left "IconButton" button
    Then confirmation should contain "2,516"


# Commenting on a friend's activity
Scenario: To "Post comment" on a "ViewPostScreen"
    When I tap on "FeedScreen" button
    And I tap the right "IconButton" 
    And I enter "Great!" into the Add a comment field
    And I tap the "Post comment" button
    Then confirmation should contain "Great!"


# Viewing my WishList
Scenario: Acess "tastewish" page
    When I tap on "ProfilePage" button
    And I tap "Tastewish" button
    Then confirmation should contain "Tastewish"


# Viewing reviews
Scenario: Acess "rating_page" page
    When I tap any image button
    And I tap "View All" button
    Then confirmation should contain "Recent Reviews"


# Viewing restaurant rating
Scenario: Acess "product_details" page
    When I tap any image button
    Then confirmation should contain "Photos"

