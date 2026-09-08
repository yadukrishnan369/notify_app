# Notify App

Notify App is a Flutter application designed to provide users with a simple and responsive experience for exploring services and viewing notifications.

The application includes a Home screen with multiple service and promotional sections, along with a Notifications screen that fetches and displays notification data from a remote API.

The project uses Provider for state management and follows a modular widget structure for better readability and maintainability. Large JSON data is processed using Flutter's `compute()` function to keep the user interface responsive.

The application also handles loading, empty, network error, and general error states to provide a smooth and reliable user experience.




## Features

- Responsive Home screen
- Location header and search section
- Service category section
- Top picks and promotional banners
- Trending and nearby store sections
- Refer and earn section
- Notifications screen
- Remote API integration
- Provider state management
- Background JSON parsing using `compute()`
- Loading and empty states
- Network and general error handling
- Retry option for failed requests
- Named route navigation
- Cached notification data to avoid unnecessary API calls




## Technologies & Packages

- **Flutter** – Application development
- **Dart** – Programming language
- **Provider** – State management
- **HTTP** – Remote API communication
- **Flutter SVG** – SVG asset rendering
- **Compute** – Background JSON parsing
- **Material Design** – UI components and styling




## Project Structure

```text
lib/
├── models/
│   └── notification_model.dart
├── providers/
│   └── notification_provider.dart
├── routes/
│   └── app_routes.dart
├── screens/
│   ├── home_screen.dart
│   └── notification_screen.dart
├── services/
│   └── api_service.dart
├── widgets/
│   └── Reusable UI components
└── main.dart

assets/
├── fonts/
├── icons/
└── images/





## API Integration

Notification data is fetched from a remote REST API using the `http` package.

The API response is converted into `NotificationModel` objects before being provided to the user interface. Since the response contains a large amount of data, JSON parsing is performed in the background using Flutter's `compute()` function to help keep the UI responsive.

The notification data is managed using Provider and is retained after the initial successful fetch to avoid unnecessary repeated API requests when reopening the Notifications screen.




## State Management

Provider with `ChangeNotifier` is used to manage the notification state.

The `NotificationProvider` is responsible for:

- Fetching notification data
- Managing the loading state
- Storing fetched notifications
- Handling network and general errors
- Notifying the UI when the state changes
- Avoiding unnecessary API requests when notification data is already available

This keeps the business logic separate from the UI and makes the code easier to maintain.




## Error Handling

The application handles different API states to provide a reliable user experience:

- A loading indicator is displayed while notification data is being fetched.
- A network-specific message is shown when an internet connection is unavailable.
- A general error message is shown when notification data cannot be loaded.
- A Retry button allows the user to request the data again after an error.
- An empty state is displayed when no notifications are available.

Technical errors are logged for debugging while user-friendly messages are displayed in the interface.




## Getting Started

### Prerequisites

Make sure the following are installed:

- Flutter SDK
- Dart SDK
- Android Studio or Visual Studio Code
- Android emulator or a physical Android device

### Installation

1. Clone the repository:

```bash
git clone <repository-url>
```

2. Navigate to the project directory:

```bash
cd notify_app
```

3. Install the required dependencies:

```bash
flutter pub get
```

4. Run the application:

```bash
flutter run
```

### Build

To create a release APK:

```bash
flutter build apk --release
```




## Technical Decisions

- **Provider** was selected for simple and efficient state management without adding unnecessary complexity.
- **Modular widgets** are used to keep screen files small, readable, and maintainable.
- **Named routes** are used to keep navigation organized.
- **`ListView.builder`** is used for notifications so list items are created only when required.
- **`compute()`** is used to parse the large notification JSON response outside the main UI isolate.
- **Notification data is cached in Provider** after a successful request to prevent unnecessary repeated API calls.
- **Local assets** are organized separately into icons, images, and fonts for easier maintenance.




## Code Quality

- Follows Flutter and Dart coding conventions.
- UI components are separated into reusable widgets.
- Screen files are kept focused on layout and state handling.
- API, model, state management, routing, and UI responsibilities are separated.
- User-friendly error handling is implemented for API failures.
- The project passes Flutter static analysis with no reported issues.

To check the project manually, run:

```bash
flutter analyze