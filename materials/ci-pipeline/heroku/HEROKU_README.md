Add files to project root:

1. `system.properties` to activate JDK 11
   (deafalt on heroku is JDK 8)
2. `Procfile` to declare a command to dun after build
   (variable $PORT is an arbitrary port that will be bind to the app site URL)
