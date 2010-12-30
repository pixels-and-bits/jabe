Feature: I want to publish an ATOM feed

  Background:
    Given 10 entries

  Scenario: A user requests the ATOM feed
    When I go to the feed url
    Then I should see the entries in the feed
