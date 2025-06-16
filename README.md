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

### Setup Android Flavor
* Add product flavor by adding code below.
* `app_name` will show differently depends on flavor.
* Build app with `--flavor dev` to apply Android flavor, otherwise app name will be `flutter_flavor` (no flavor).

```
app module -> build.gradle
flavorDimensions += "default"
productFlavors {
    create("dev") {
        dimension = "default"
        resValue("string", "app_name", "Dev Flavor Example")
        applicationIdSuffix = ".dev"
    }
    create("staging") {
        dimension = "default"
        resValue("string", "app_name", "Staging Flavor Example")
        applicationIdSuffix = ".staging"
    }
    create("prod") {
        dimension = "default"
        resValue("string", "app_name", "Prod Flavor Example")
        applicationIdSuffix = ""
    }
}
```

```
app module -> AndroidManifest.xml
<application
    android:label="@string/app_name"
    ...
```

* Don't forget to update Run Configuration
  ![Run Configuration with Android flavors](https://github.com/taweewong/Flutter-Flavor/blob/main/readme_assets/Screenshot%202568-06-16%20at%2015.13.59.png?raw=true)
* When run the app it should separate package name like this

  ![Result with Android flavors](https://github.com/taweewong/Flutter-Flavor/blob/main/readme_assets/Screenshot%202568-06-16%20at%2015.13.23.png?raw=true)

### References
* https://docs.flutter.dev/deployment/flavors
