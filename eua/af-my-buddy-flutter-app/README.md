My Buddy Flutter App

Dependencies:
Flutter > version 3.0
Android Studio / ios Xcode


Instructions to run

Create .env file in tfrom .env.example
Open ios Simulator / Android Emulator
flutter run

Building the models:
Models are generated using swagger code gen.
Build tasks are available in build.yaml then run the following command
flutter pub run build_runner build --delete-conflicting-outputs