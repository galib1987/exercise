# https://saucelabs.com/platforms/#windows_old
# osx109 = Mac / OS X Mavericks
# osx108 = Mac / OS X   Mountain Lion
Feature: Google website

  Scenario Outline: Sauce labs example with various browsers
    Given As user I navigate to Kudos Login page "<browser>"
    Then  User type username and password on the appropriate fields
    And   User clicks on the login button
    Then User should be able to click on the recent activity tab
    Then User takes screenshot of kudos recent activity page

    Examples:
      |browser|
      |chrome40\|osx109|
      |chrome41\|osx109|
      |chrome42\|osx109|
      |chrome40\|osx108|
      |chrome41\|osx108|
      |chrome42\|osx108|
      |chrome40\|windows7|
      |chrome41\|windows7|
      |chrome42\|windows7|
      |chrome40\|windowsxp|
      |chrome41\|windowsxp|
      |chrome42\|windowsxp|
      |ie8\|windows7|
      |ie9\|windows7|
