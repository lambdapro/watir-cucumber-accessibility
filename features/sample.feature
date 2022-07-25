Feature: Google can search

Background:
  Given I am on Google

Scenario: Search for a term
  When I fill in "q" found by "name" with "lambdatest"
  And I submit
  Then I should see title "lambdatest - Google Search"
