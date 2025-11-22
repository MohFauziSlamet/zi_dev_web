# Core Directory

This directory contains the core configuration and infrastructure of the application.

## Structure

```
core/
├── bindings/          # GetX Bindings for dependency injection
│   └── initial_binding.dart
└── routes/            # Route configuration
    ├── app_routes.dart    # Route name constants
    └── app_pages.dart     # Route definitions with bindings
```

## Bindings

**InitialBinding** - Initializes all global controllers that should be available throughout the app lifecycle.

```dart
class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController(), permanent: true);
  }
}
```

## Routes

**AppRoutes** - Contains all route name constants to avoid magic strings.

```dart
abstract class AppRoutes {
  static const home = '/';
}
```

**AppPages** - Defines all application pages with their bindings.

```dart
class AppPages {
  static const initial = AppRoutes.home;
  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => const MainPage(),
      binding: InitialBinding(),
    ),
  ];
}
```

## Usage

The routes and bindings are automatically configured in `main.dart`:

```dart
GetMaterialApp(
  initialBinding: InitialBinding(),
  initialRoute: AppPages.initial,
  getPages: AppPages.routes,
)
```

## Adding New Routes

1. Add route name to `app_routes.dart`:
```dart
static const about = '/about';
```

2. Add GetPage to `app_pages.dart`:
```dart
GetPage(
  name: AppRoutes.about,
  page: () => const AboutPage(),
  binding: AboutBinding(), // Optional
),
```

3. Navigate using:
```dart
Get.toNamed(AppRoutes.about);
```
