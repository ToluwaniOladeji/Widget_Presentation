# Flutter FadeTransition Demo

A simple Flutter widget demo that uses `FadeTransition` to smoothly fade the Flutter logo in and out when the floating action button is pressed.

## Features

- Smooth fade-in and fade-out animations.
- Uses Flutter's `FadeTransition` widget.
- Controls animation with an `AnimationController`.
- Includes a floating action button to toggle the animation.
- Properly disposes of the animation controller to prevent resource leaks.

## Requirements

- Flutter SDK
- Dart SDK
- An editor such as Visual Studio Code or Android Studio

## Getting Started

1. Clone the repository:

   ```bash
   git clone <repository-url>
   ```

2. Navigate to the project directory:

   ```bash
   cd <project-directory>
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Run the application:

   ```bash
   flutter run
   ```

## How It Works

The application displays the Flutter logo in the center of the screen using the `FadeTransition` widget.

An `AnimationController` manages the animation over one second:

- **Fade in:** Press the floating action button to make the logo gradually appear.
- **Fade out:** Press the button again after the animation completes to make the logo gradually disappear.

The animation controller is initialized in `initState()` and disposed of in `dispose()` to ensure proper resource management.

## Technologies Used

- Flutter
- Dart
- `FadeTransition`
- `AnimationController`

## License

This project is available for learning and demonstration purposes. Add a license file if you intend to distribute it under a specific open-source license.
