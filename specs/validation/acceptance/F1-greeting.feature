Feature: F1 Greeting

  @story-F1.1 @story-F1.2
  Rule: Pressing Greet shows a greeting built from the typed name

    Scenario: Greeting a visitor by name
      Given Ana has typed "Ana" into the name field
      When Ana presses Greet
      Then the screen shows "Hello, Ana!"

  @story-F1.3
  Rule: Greet cannot be used without a name

    @negative
    Scenario: Greet is unavailable with no name typed
      Given the name field is empty
      Then the Greet button is disabled

  @story-F1.4
  Rule: A visitor may greet again with a different name

    Scenario: Greeting a second name after the first
      Given Ana has greeted with the name "Ana"
      When Ana clears the field, types "Ben", and presses Greet
      Then the screen shows "Hello, Ben!"
