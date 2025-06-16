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

### Add Run Configuration to Android Studio
* Add above command to run configuration, this make it easier to run the app.
![Adding Run Configuration](https://github.com/taweewong/Flutter-Flavor/blob/main/readme_assets/Screenshot%202568-06-16%20at%2014.06.34.png?raw=true)
