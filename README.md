# Stocks Price Tracker Demo

A simple Flutter project that displays list of stocks and their live-data prices with search functionality.

## Setup

#### Prerequisites to run the project:

- Flutter
- IDE to work on Flutter (VSCode or Android Studio)
- Xcode or Android Studio

#### Follow these steps to run the project:

1. Run `flutter pub get` to make sure all dependecies are installed correctly.
2. Run Dart's build runner `dart run build_runner build --delete-conflicting-outputs` in project's root folder to make sure generated files are correctly set up.
3. Choose iOS Simulator or Android Emulator and run the project on.

## Features

1. Fetch stocks from [Finnhub API](https://finnhub.io/ "Finnhub API")
2. Display live pricing for the visible stocks.
3. Search.

## Architecture

You can find more information about architecture design document [here](design_document.md "here").
