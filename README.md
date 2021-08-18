# Login page

Login page level with master; Forgot Password page needs to be merged and connected to backend.

Contains:
- UI layout for email, password, forgot password, remember me, create account
- Email, password, create account are connected to backend

Forgot password and remember me need to be connected to the backend Firebase.

## lib > ForgotPassword.dart
UI layout for forgot password page (textfield prompt for user to enter email).
Needs to be connected to the backend Firebase to send user an email with password reset instructions. 

## lib > image_banner.dart
Container for logo placement.

## lib > loginScreen.dart
Main UI layout for login screen (textfield prompt for user to enter email, password, login button, forgot passsword button and sign up button).
Designed with logo colors and accessible font.

## lib > logo.dart
Container for logo placement.

## lib > main.dart
Navigation from login page to Forgot Pasword page

## pubspec.yaml
Contains packages for:
- Images (app logo files)

