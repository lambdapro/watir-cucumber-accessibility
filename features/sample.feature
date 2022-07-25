Feature: Example using minimal Watir-Webdriver setup (using firefox)

  Background:
    Given I am a visitor
    When I visit "http://www.google.com/"

  # The steps for the following scenarios are provided by the axe-matchers gem

  Scenario: Test whole page (known to be inaccessible, should fail)
    Then the page should not be accessible

  Scenario: Test working sub-tree (should pass)
    Then the page should be accessible within "#intro"

  Scenario: IFrames can be skipped
    Then the page should be accessible according to: wcag2a, wcag2aa, wcag21aa
