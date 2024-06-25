### README.md

# Companies Assets App

## Overview

Companies Assets App is a Flutter application designed to manage and visualize company assets and locations in a hierarchical structure. The application leverages GetX for state management, dependency injection, and routing. The app supports multiple languages and includes dark mode functionality.

## Features

- Display hierarchical tree structure of assets and locations
- Search and filter assets by name, type, and status
- Toggle dark mode
- Multi-language support (English, Portuguese)
- Dependency injection using get_it/GetX and Injectable
- Local storage using json database
- Navigation management using Auto Route

## Demo Video

Here is a demo video showcasing the main features of the Companies Assets App:

![Demo Video](assets/demo_video.gif)

If the video does not play, [click here to view it](assets/demo_video.gif).

## Getting Started

### Prerequisites

- Flutter SDK: [Flutter installation guide](https://flutter.dev/docs/get-started/install)
- Dart SDK: Included with Flutter
- GetX: [GetX package](https://pub.dev/packages/get)
- Isar: [Isar package](https://pub.dev/packages/isar)
- Injectable: [Injectable package](https://pub.dev/packages/injectable)

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/companies_assets.git
   cd companies_assets
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Generate code with Injectable**

   ```bash
   flutter pub run build_runner build
   ```

4. **Run the application**

   ```bash
   flutter run
   ```

## Project Structure

```plaintext
lib
├── app
│   ├── modules
│   │   ├── assets
│   │   │   ├── controllers
│   │   │   │   └── assets_controller.dart
│   │   │   ├── models
│   │   │   │   ├── asset.dart
│   │   │   │   ├── location.dart
│   │   │   │   └── tree_node.dart
│   │   │   ├── repository
│   │   │   │   └── repository.dart
│   │   │   ├── views
│   │   │   │   ├── assets_view.dart
│   │   │   │   └── widget
│   │   │   │       ├── choice_chip.dart
│   │   │   │       ├── search_bar.dart
│   │   │   │       └── tree_node_adapter.dart
│   ├── utils
│   │   ├── json_converts
│   │   │   ├── color_convert.dart
│   │   │   └── icon_data_convert.dart
│   │   └── theme
│   │       └── theme.dart
│   ├── bindings
│   │   └── initial_binding.dart
│   └── main.dart
assets
├── assets.json
├── locations.json
```

## Code Explanation

### `main.dart`

The entry point of the application. Initializes the app with required bindings and sets the initial route.

### `assets_controller.dart`

Handles the business logic for fetching and processing asset data. Manages state and user interactions.

### `repository.dart`

Responsible for loading JSON data and building the hierarchical tree structure of assets and locations.

### `tree_node.dart`

Defines the `NodeTree` model used to represent nodes in the asset hierarchy.

### `assets_view.dart`

The main view displaying the asset hierarchy. Includes a search bar and filter options.

### `choice_chip.dart`, `search_bar.dart`, `tree_node_adapter.dart`

Custom widgets used in the main view.

### `theme.dart`

Defines light and dark themes for the app.

### `json_converts`

Custom JSON converters for serializing and deserializing complex data types like `IconData` and `Color`.

## Localization

The app supports multiple languages. Language files are located in the `assets` directory:

- `en_US.json` - English
- `pt_BR.json` - Portuguese

Add new translations by creating additional JSON files and updating the language switch logic in `DrawerWidget`.

## Dark Mode

Toggle dark mode in the app by using the switch in the drawer. The app will remember the user's preference.

## Navigation Management

The app uses Auto Route for managing navigation. Auto Route provides a simple and type-safe way to define routes and navigate between them.

- Routes are defined in `app/auto_router/routes.dart`.
- You can navigate to a route using the custom route class or by using the `context` provided by Flutter `lib/utils/navigation`.

Example of navigating to a route:

```dart
context.navigator.navigateTo()
```

## Contributing

1. Fork the repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature-branch`)
5. Create a new Pull Request

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contact

For questions or suggestions, please open an issue or contact the repository owner.

---