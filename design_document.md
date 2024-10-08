# Design Document

This document explains how & why the design was set for this project.

## Architecture

As usual, clean code architecture is preferred, hence comes the typical implementation in the project. With the power of Dependency Injection and Bloc State Management to provide an extendable and maintainable code for future features. Modules are built on abstracts to provide flexibility to change implementations, etc.

## Design

Project requirements are simple, display a list of stocks and display live updates of their prices, `StocksListPage` is the entry point, and with the usage of Bloc, the Bloc does the business logic as follows:

- Bloc first initializes the state, then calls API to fetch list of Stocks.
- Bloc then subscribes to WebSocket to start listening for price updates.
- UI notifies Bloc that X amount of Stocks are now visible on screen, and Bloc starts checking if those Stocks are already subscribed to or not, if not, adds them to a reference list and starts subscribing in the WS by sending a JSON message to the opened connection.
- Same happens if any stock becomes invisible, UI notifies Bloc and it checks if it was subscribed to, it removes it from reference list and then sends a message to WS to unsubscribe. This was made to prevent listening to stocks that are not visible on the screen and to offer on-demand live-pricing.
- Search bar UI notifies Bloc about text changes and Bloc filters the list (when the data is first fetch it's stored in a reference list) and emits the state with the new filtered list.

As you will notice, Repository is made as a `Singleton` using `injectable` to keep one instance running of the websocket connection held inside of it.

DTOs are separated from Models as models are supposed to be UI-ready, so in current implementation there's no difference between them, but the separation was made ready for future implementations that will most likely require this.

Unit & Widget tests are included to ensure code quality.

## Third-party libraries

- `get_it` and `injectable` for Dependency Injection.
- `bloc` for state management.
- `dio` for network calls.
- `web_socket_channel` for web socket connection.
- `visibility_detector` for detection of visible stocks on screen to offer subscription only to shown stocks.
- `json_annotation` for DTOs and JSON parsing.
- `freezed` for providing out of the box generated code that's needed, just like `copyWith`.
- `connectivity` for internet connection checks.
- `mockito` for testing mocks.

## Possible improvements

- Pull to refresh functionality in case of API failures.
- Connectivity listener to refresh in case of network issues.
