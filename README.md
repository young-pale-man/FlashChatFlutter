# Flash Chat⚡️

Flutter application that works with Google Firebase. App is a group chat in which only 
registered users can write. For authorization and storage of chat history, authentication methods 
and the Firebase database are used. The basics of Flutter animation are also covered.

## Technologies🔧

#### - Flutter
#### - Firebase
#### - Firebase Authorization
#### - Firebase database
#### - Animation

## Interface💻

When entering the application, the user is greeted with a screen with two buttons, also the logo 
and the name of the application are above. The "login" button takes the user to the login screen, 
and the "register" button takes the user to the registration screen.

After going to one of the screens, the user is greeted with two fields - an email field and a 
password field. By entering correct data on the authorization screen or new data on the 
registration screen, the user is taken to the chat screen.

The chat screen is a list of messages. Messages from other users are displayed on the left, 
messages from an authorized user are displayed on the right. Each message is a rectangle with 
three rounded corners. Above each message the username of the user who wrote it is displayed.

At the bottom of the screen, the user can find a text field, where he can write text in and click 
the send button - his message will be sent to the server and displayed to all users.

There is also a chat exit button at the top of the screen, which returns the user to the main menu.

## Setting Up⚙️

The application is based on Google Firebase database storage and authorization methods. 
For the application to work, you need to create a basic application in the Google Firebase 
utility and enter the necessary data into the .main file of the flutter application 
(I added comments to the file code for easier navigation).

Also, in the settings of your Firebase application, you need to set authentication parameters 
only for registered users. Information on how to do this is in the Firebase documentation.

The next step is to create a database with the "messages" collection in the Firebase project. It is 
necessary to create the fields "sender", "text" and "timeStamp". The fields and collection can be named 
differently, but then you need to change the given names to yours in the Flutter application code. 
If you want to use the code I wrote, the fields and collection should be named exactly as indicated above.

After all these initial settings, the application can be used.

## Functionality🕹

After launching the application and going to the authorization or registration screen, the user must enter 
the data correctly.

Validation of the entered data has not been added to the authorization screen, so when you enter a 
non-existent username or password, nothing happens. If the data is entered correctly, the user will 
be taken to the chat screen.

The registration screen also lacks validation. It is planned to be added to future versions of the 
application. To successfully register and avoid application errors, the user must enter the correct email 
address and password of 6+ characters, as required by the Firebase authorization rules. If these rules are 
not followed, registration will not occur.

The email input field uses the email keyboard. Password input fields close the password with dots using the 
corresponding text field property.

The chat screen is the most common chat format that we are used to seeing in instant messengers. Messages are 
sorted by database parameter "timeStamp" descending.

## Possible future improvements⬆️

#### - New interface
#### - Validation of user's data in authorization and registration screen
#### - Split into different chats
#### - Ability to change password
