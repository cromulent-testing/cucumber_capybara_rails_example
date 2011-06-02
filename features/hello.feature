Feature:
  In order for me to form an emotional bond with my computer
  As a Human
  I want my computer to say hello to me

# add @javascript to run this in a browser
Scenario: Computer greets me after I tell it my name
  When I tell the computer my name "Mike"
  Then It should greet me with a sentence containing "Mike"