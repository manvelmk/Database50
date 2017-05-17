# Database50 - Stored Procedures
Details:

___________________
- **insertPresentation.sql**
  - Parameters: Full Name, Presentation Title
  - Usage:  EXECUTE insertPresentation 'Manvel Mkhitaryan' 'How I made my first Database'
  - Description: The stored procedure takes two strings` a full name and a title for a 
  presentation and adds them into their respective tables and adds the foreign keys to define the relationship.
  In the case that the values already exist only the foreign keys are added linking them together.
  The full name is split into a first and last names based on a space character after the first string and before the last in the 
  full name parameter.
___________________
- **selectPresentationsPerSpeaker.sql**
  - Parameters: Full Name
  - Usage:  EXEC sp_speakerPresentation 'Andy Leonard'
  - Description: Selects all presentations that have the supplied first and last lames associated with them.
  ___________________
- **sp_speakerPresentation.sql**
  - Parameters: none
  - Usage:  EXECUTE selectPresentationsPerSpeaker
  - Description: Simply selects (displays) all presentations with the title, difficulty level, event location and full name of speaker.
  ___________________
- **selectPresentationsPerTrack.sql**
  - Parameters: Track Name
  - Usage:  EXECUTE sp_presentationsPerTrack 'BI Information Delivery'
  - Description: Displays list of presentations that have thespecified track in Budapest.
