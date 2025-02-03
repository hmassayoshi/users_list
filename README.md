# users_list

A simple user list

## This project, basing on clean architecture, has the following layers:
- lib
  - domain: with the application business logic
    - entities: business objects
    - use_cases: business logic
  - data: with the data access logic
    - repositories: domain repository implementation
    - data sources: API fetches (from https://jsonplaceholder.typicode.com/users)
    - models: data handling from API
  - presentation: with the user interface
    - controllers: UI state manager
    - pages: application screens
    - widgets: widget components
  - main: gathering all the layers

## This project uses the following packages
- Dio: Used for API calls using HTTP requests, a robust and easy tool for HTTP requests
- GetX: Used for state management and navigation through the app, a simple and efficient tool for state management
- Mockito: Used for mock the repository layer
- Build Runner: Used for generating mocked files

## How to execute
1. Clone the repo.
2. Execute `flutter pub get` for dependencies installation.
3. Execute `flutter run` to run the application.

## The last apk build can be found on res/apk
[user_list_1.0](https://github.com/hmassayoshi/users_list/blob/72a0bf79af7dae1e474fc766b5892d490f2ef80c/res/apk/app-release.apk?raw=true)


