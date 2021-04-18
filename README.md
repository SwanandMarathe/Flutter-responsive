# flutter_2_application_responsive

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


For deploying it to the Firebase, we need to perform a few steps.

Step1.
First we need to install node, which we can find at the https://nodejs.org/ 

Step2.
Then we can install the firebase tools via `npm install -g firebase-tools`

Step3.
The we can do the `firebase login`

These are the common steps.

After this we can go to the root folder of our flutter web app which we want to host

Step4.
Then we can call `firebase init` in the folder

In there we can choose different options of the asked questions

Step5.
And now in the final step we can build the flutter web and then deploy it via `firebase deploy`
