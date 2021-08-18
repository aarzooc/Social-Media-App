# HospiCHAT App

Healthcare Systems R&A app to promote communication between patients in hospitals. Patients experiencing long-term hospital visits can face loneliness, social isolation and depression. This can be attributed to the lack of communication tools available for these specific individuals within a hospital setting. This repository is being used to develop an app tailored to long-term hospital patients to allow them to connect with other individuals experiencing similar circumstances. This in-hospital social media app will offer different modes of communication such as direct messaging, group messaging, and video and audio calling. Users will also be able to post anonymous or known status updates on social boards. We aim to meet the accessibility needs of a wide range of patients. Ultimately, the goal of the app is to foster a safe space for individuals to create lasting relationships and decrease the anxiety and depression associated with long-term hospital stays. 

NOTE: Refer to the readme.md files in each folder to have a better understanding of the contents in the folder.

**Development progress**
- Login : complete
- Forgot password : complete
- Create profile : in progress
- Forum : in progress
- Navigation bar: in progress 
- Authentication: in progress

**Contents of Master:**
- Login page UI dart file 
- Home Screen dart file 
- login screen dart file 
- create profile page UI dart file
- regsitration pgae UI dart file  
 
NOTE: the majority of the files in master have the UI connected to the back end except for the craete profile page

## Social media > lib > main.dart 
Main contains the functionality of the create account process. The main file connects the create account page to the home page and the sign in page UIs to the backend system. This file is vital to testing the app. Line 24 allows you to change which file is run on the emulator to test the functionality and visualize the app. This main allows you to create an account, sign out of the app and sign back in.  The main connects all of the files within the folders in lib>screens. 

## Social media > lib > Screens 

### home > home.dart
This file create the home page, create the sign out functionality, and allows you to sign back into the app. The home.dart file is connected to the firebase. 

### login > login.dart 
This file is for the login page that appears once you sign out of the app. This file is connected to the backend. The login branch contains the same page, however this page has the logo of the app. This file is also coded to show the error messages when logining back into the app meaning that it is able to access the information saved in the firebase. 

### profile > profile_page.dart 
This file has not been connected to the firebase however it contains the UI for the creat profile page. This is the page where users can customize their account with a profile picture, bio and interests. 

*Contains image_banner2.dart -> which is used for the profile image*

### register > register.dart 
This file allows the user to create their account by entering a username, email, age and password. This portion has been connected to the firebase and all of the information is stored. This infomation can be retreaved from the firebase for the user to re-login once they have signed out. The UI for this file has been created with accesibity in mind as each of the keyboards are set for each fields individual functionality. 

*Contains image_banner1.dart -> which is used for the logo*
 
## Social media > pubspec.yaml 
* This file contains the images under the assets (logo 1, logo 2, and profile image)
* The file contains new font packages that have been commented out at the end of the document
* This file contains the firebase packages that are required to connect the UI to the backend of the app





