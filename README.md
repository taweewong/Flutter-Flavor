# Flutter-Flavor
Leaning about flavor and environment in Flutter

## Run the application

### Select which environment to run
```
flutter run --target lib/main_dev.dart
flutter run --target lib/main_staging.dart
flutter run --target lib/main_prod.dart
```

### After setup flavor on Android and iOS it will be able to select flavor
```
flutter run --target lib/main_dev.dart --flavor dev
```