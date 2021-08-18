# Forum page
Contains:
- UI layout 
- Example user posts and replies

Needs to be connected to the backend Firebase with users for trial without models.
Error message connecting models to screens needs to be resolved. 

## lib > screens > forum > models
This will be deleted once connected to the backend Firebase to allow for actual users to test and make posts.
### author_model.dart
Example users with uploaded profile photos

### post_model.dart
Example posting layout

### replies_model.dart
Example reply layout

## lib > screens > forum > screens
### home_forum.dart
UI for forum home screen.
Includes:
- popular topics
- trending posts
- posts from subscribed topic forums

### post_forum.dart
UI for specific posts with replies.
Includes:
- bookmarks
- votes/likes
- topic filters

## lib > screens > forum > widgets
### popular_topics.dart
UI for popular topics tab
- scrolling to see trending or relevant forums

### posts.dart
UI for trending posts
- this will have to be adapted to ensure only posts seen by specific users are based on subscribed forums
- since this app is not liked based, this will have to be further optimized

### top_bar.dart
UI for type of posts to show
ex. popular, hospital, recommended

## pbspec.yaml
Contains packages for 
- Images (user profile photos)
- Fonts
