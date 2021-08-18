# Messaging Feature
Contains:
- basic layout for messaging feature
- allows user to add new chat, search for existing chats
- settings button which should allow the user to modify their profile

## lib > screens > home

### home.dart
This file create the home page, create the sign out functionality, and allows you to sign back into the app. The home.dart file is connected to the firebase.

## lib > screens > login

### login.dart
This file is for the login page that appears once you sign out of the app. This file is connected to the backend. The login branch contains the same page, however this page has the logo of the app. This file is also coded to show the error messages when logining back into the app meaning that it is able to access the information saved in the firebase.

## lib > screens > messaging

### messaging.dart
This file provides the basic layout which will allow the user to add a new chat, search for existing chats, as well as a settings button which should allow the user to modify their profile. The backend still needs to be implemented, as well as some sort of ‘Add friend’ or ‘Follow’ in order to allow the user to message other users from this personal list.

## lib > screens > register

### register.dart
This file allows the user to create their account by entering a username, email, age and password. This portion has been connected to the firebase and all of the information is stored. This infomation can be retreaved from the firebase for the user to re-login once they have signed out. The UI for this file has been created with accesibity in mind as each of the keyboards are set for each fields individual functionality.

## lib > main.dart

### main.dart
Main contains the functionality of the create account process. The main file connects the create account page to the home page and the sign in page UIs to the backend system. This file is vital to testing the app. Line 24 allows you to change which file is run on the emulator to test the functionality and visualize the app. This main allows you to create an account, sign out of the app and sign back in.  The main connects all of the files within the folders in lib > screens.

## pubspec.yaml
Contains packages for 
- Images (user profile photos)
