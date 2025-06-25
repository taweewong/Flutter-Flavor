# Flutter-Flavor
Leaning about flavor and environment in Flutter

## Setup entry file
* Create `main_dev.dart`, `main_staging.dart`, `main_prod.dart` to be entries file.
* All of `main` file can setup for each flavor.
* Then pass the config or something to the `app.dart`

## Run the application with target

### Select which environment to run
```
flutter run --target lib/main_dev.dart
flutter run --target lib/main_staging.dart
flutter run --target lib/main_prod.dart
```

### Add Run Configuration to Android Studio
* Add above command to run configuration, this makes it easier to run the app.
![Adding Run Configuration](https://github.com/taweewong/Flutter-Flavor/blob/main/readme_assets/Screenshot%202568-06-16%20at%2014.06.34.png?raw=true)

## Setup flavors

### Setup Android Flavors
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

### Setup iOS Flavors
* Using Xcode follow this video -> [Flutter Flavor](https://youtu.be/Vhm1Cv2uPko?si=26Fh9ZZwpj6HjloS&t=215)

### Run with Flavor

```
flutter run --target lib/main_dev.dart --flavor dev
```

* When run the app it should separate package name like this

![Result with Android flavors](https://github.com/taweewong/Flutter-Flavor/blob/main/readme_assets/Screenshot%202568-06-16%20at%2015.13.23.png?raw=true)

* Set Run Configuration with Flavor
  
![Run Configuration with Android flavors](https://github.com/taweewong/Flutter-Flavor/blob/main/readme_assets/Screenshot%202568-06-16%20at%2015.13.59.png?raw=true)

## Adding Icons

### Use flutter_launcher_icons
```
flutter pub add flutter_launcher_icons
```

### Adding Icons
* It should be 1024x1024 (for iOS support)
* example folder:
  * assets/icons/icon_dev.png
  * assets/icons/icon_staging.png
  * assets/icons/icon_prod.png

### Create .yaml to generate icon
* The library will generate icon for each platform
```
Example: flutter_launcher_icons-dev.yaml

flutter_icons:
  android: true
  ios: true
  image_path: 'assets/icons/icon_dev.png'
  remove_alpha_ios: true
```

### Let the lib generate icon
```
flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons*
```

### More setup for iOS
* Go to `Target Runner -> Build Settings -> Primary App Icon Set Name`
* Add values like this

<img width="868" alt="image" src="https://github.com/user-attachments/assets/9a12c065-cd99-4fcb-9f22-503f8e778010" />

## References
* https://docs.flutter.dev/deployment/flavors
* https://www.youtube.com/watch?v=Vhm1Cv2uPko
