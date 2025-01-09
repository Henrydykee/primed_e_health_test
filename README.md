# Flutter Project: Login, Home, and Detail Screens with Provider State Management

## Overview
This Flutter project implements a core architecture using the MVVM (Model-View-ViewModel) pattern. It includes a Login Screen, a Home Screen, and a Detail Screen, leveraging the Provider state management library for seamless state handling.

### Features
1. **Login Screen**
   - Email and password input fields.
   - Validation for email format.
   - Password field ensures a minimum of 8 characters.
   - Displays error messages if validation fails.
   - Mock login validation using the following credentials:
     - **Email**: `test@example.com`
     - **Password**: `Password@123`

2. **Home Screen**
   - Displays a list of items fetched from a local JSON file or mock data.
   - Provides smooth navigation to the Detail Screen when an item is tapped.

3. **Detail Screen**
   - Displays detailed information about the selected item.

4. **Loading Indicator**
   - Shown during navigation or data fetching.

5. **Unit Tests**
   - Includes a unit test for email validation and item list.

---

## Project Structure
The project follows the MVVM architecture to ensure modularity and scalability.

```
lib/
├── core/
│   ├── models/
│   │   ├── department.dart
│   ├── services/
│   │   ├── auth_service.dart
│   │   ├── department_service.dart
│   ├── providers/
├── viewmodels/
│   ├── auth_viewmodel.dart
│   ├── departments_viewmodel.dart
├── views/
│   ├── screens/
│   │   ├── login_screen.dart
│   │   ├── home_screen.dart
│   │   ├── detail_screen.dart
│   ├── widgets/
│   │   ├── department_card.dart
├── main.dart

 test/
├── auth_provider_test.dart
├── items_provider_test.dart
```

### Key Directories
- **core/**: Contains foundational elements of the app.
  - **models/**: Defines data structures such as `department.dart`.
  - **services/**: Includes business logic and data-fetching services.
  - **providers/**: Manages dependency injection and state management setup.
- **viewmodels/**: Handles state management and business logic for each screen.
  - `auth_viewmodel.dart`: Manages authentication-related state.
  - `departments_viewmodel.dart`: Manages state for department data.
- **views/**: Contains UI components.
  - **screens/**: Includes individual screens like login, home, and detail.
  - **widgets/**: Reusable UI components like `department_card.dart`.
- **test/**: Contains unit tests for authentication and item/department management logic.
- **main.dart**: Entry point of the application.

---

## Installation

### Prerequisites
- Flutter SDK installed ([Installation Guide](https://docs.flutter.dev/get-started/install)).
- Code editor (e.g., VS Code, Android Studio).

### Steps
1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```bash
   cd flutter_project
   ```
3. Get dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

---

## Usage

### Login Screen
1. Enter the mock credentials:
   - Email: `test@example.com`
   - Password: `Password@123`
2. Tap the **Login** button.
3. If validation fails, an error message will be displayed.
4. On successful login, navigate to the Home Screen.

### Home Screen
1. View a list of items fetched from local JSON or mock data.
2. Tap on an item to navigate to the Detail Screen.

### Detail Screen
1. View detailed information about the selected item.

---

## Unit Tests
Unit tests are written to ensure code reliability. The project includes tests for authentication and item management logic.

### Running Tests
1. Run the following command to execute tests:
   ```bash
   flutter test
   ```
2. Example tests included:
   - **Email Validation**: Ensures proper format validation.
   - **Items Provider Test**: Validates department data fetching logic.

---

## Dependencies
The project uses the following dependencies:
- **provider**: State management.
- **flutter_test**: Unit testing.

Add them to `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.5

dev_dependencies:
  flutter_test:
    sdk: flutter
```

---

## License
This project is licensed under the MIT License. See the LICENSE file for more details.


