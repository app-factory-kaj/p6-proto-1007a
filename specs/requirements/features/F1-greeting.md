# Greeting

## Purpose

Let a visitor type their name and press Greet to see a friendly, personalized
greeting on the same screen.

## User Stories

- F1.1 As a visitor, I type my name into a field on the page.
- F1.2 As a visitor, I press Greet and see "Hello, {name}!" appear on the same screen.
- F1.3 As a visitor, I see the Greet button disabled until I have typed a name.
- F1.4 As a visitor, I can change the name and press Greet again, as many times as I like, to see a new greeting each time.

## Decisions

- The greeting message is "Hello, {name}!", built from exactly what the visitor typed.
- The Greet button is disabled while the name field is empty.
- Greeting is repeatable: there is no limit on how many times a visitor may greet, and no lock after the first one.