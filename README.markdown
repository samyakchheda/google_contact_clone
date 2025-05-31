# Google Contacts Clone 📱

A Flutter-based application that replicates the core functionalities of the Google Contacts app. This app enables users to manage contacts efficiently with features like viewing, adding, editing, and deleting contacts, all handled in-memory using the BLoC architecture for robust state management. 🚀

## Features ✨

- **Contact List**: Display contacts with names and phone numbers in a clean, scrollable list. 📋
- **Add Contacts**: Create new contacts with optional fields like email. ➕
- **Edit Contacts**: Update existing contact details seamlessly. ✏️
- **Delete Contacts**: Remove contacts with a single action. 🗑️
- **Search Functionality**: Quickly find contacts by name or phone number. 🔍
- **BLoC Architecture**: Ensures scalable and maintainable state management. 🛠️
- **Responsive UI**: Clean and intuitive design inspired by Google Contacts. 🎨
- **Theme Support**: Implement light/dark mode and customizable themes. 🌗
- **Smooth Transition**: Navigate between screens with fluid animations. 🌊
- **Direct Call**: Make calls directly from the app without opening the default dialer. 📞
- **Profile Photo**: Add profile photos to contacts for a personalized touch. 🖼️

## Tech Stack 🛠️

- **Flutter**: Cross-platform UI framework for building the frontend. 🌐
- **Dart**: Programming language for app logic and functionality. 🎯
- **BLoC**: Business Logic Component for state management. 📊
- **UUID**: Generates unique IDs for contacts. 🔑

## Getting Started 🚀

### Prerequisites ✅

- Flutter SDK (version 3.0 or higher)
- Dart (included with Flutter)
- IDE: VSCode, Android Studio, or IntelliJ IDEA
- Git for cloning the repository

### Setup 🛠️

1. **Install Flutter SDK**:
   - Download and install the Flutter SDK from [flutter.dev](https://flutter.dev/docs/get-started/install). 📥
   - Follow the platform-specific setup instructions for your operating system (Windows, macOS, or Linux).
   - Verify the installation by running:
     ```bash
     flutter doctor
     ```
     Ensure all checks pass or address any issues reported. ✅

2. **Set Up an IDE**:
   - Install VSCode or Android Studio. 🖥️
   - Add Flutter and Dart plugins/extensions for better code completion and debugging support.
   - Configure an emulator (Android/iOS) or connect a physical device for testing. 📱

3. **Clone the Repository**:
   ```bash
   git clone https://github.com/samyakchheda/google_contact_clone.git
   cd google_contact_clone
   ```

4. **Install Dependencies**:
   ```bash
   flutter pub get
   ```
   This fetches all required packages, including BLoC and UUID. 📦

5. **Run the App**:
   ```bash
   flutter run
   ```
   Select a target device (emulator or physical device) when prompted. 🚀

### Troubleshooting Setup Issues ⚠️

- **Flutter Doctor Errors**: Address missing dependencies like Android SDK or Xcode (for macOS) as indicated by `flutter doctor`. 🩺
- **Device Not Detected**: Ensure USB debugging is enabled on physical devices or that an emulator is running. 📴
- **Dependency Errors**: Run `flutter clean` followed by `flutter pub get` if dependency issues arise. 🧹

## Project Structure 📁

```
lib/
├── presentation/      # UI-related logic and state management 🧠
│   ├── bloc/         # BLoC files for business logic and state management 📊
│   ├── screens/      # UI screens (Home, Add/Edit Contact) 🖼️
│   ├── widgets/      # Reusable UI components 🔄
├── data/             # Data layer (e.g., repositories) 📚
├── domain/           # Business logic and models (e.g., Contact model) 📋
└── main.dart         # Application entry point 🚪
```

## Future Improvements 🔮

- **Persistent Storage**: Integrate local databases like Hive or SQLite for data persistence. 💾
- **Cloud Sync**: Add Firebase for real-time contact synchronization. ☁️
- **Contact Groups**: Organize contacts into groups or add favorites. 👥
