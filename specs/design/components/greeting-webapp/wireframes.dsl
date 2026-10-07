screen Greeting "Type a name and press Greet to see a friendly greeting"
  navbar "Greeting Board"
  heading "Greeting Board"
  input "Your name"
  button "Greet" primary // greets in place on this same screen; nothing else to navigate to
  divider
  text "Hello, Ana!"

flow "Say hello"
  description "A visitor types their name and greets, as many times as they like"
  Greeting
