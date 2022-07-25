Feature: Example using minimal Watir-Webdriver setup (using firefox)

  Background:
    Given I am a visitor
    When I visit "https://the-internet.herokuapp.com/windows"

  # The steps for the following scenarios are provided by the axe-matchers gem

  Scenario: IFrames can be skipped
    Then the page should be accessible according to: wcag2a, wcag2aa, wcag21aa
