# Flugo

A mobile development playground combining a Flutter UI prototype with a Go backend directory.

## Current status

Early scaffold. The Flutter app renders a diet/category/recommendation interface. The Go main function is empty and currently starts no HTTP service.

## Features and implementation

- Flutter home screen with category cards, a search-field interface, and recommendation cards.
- SVG assets and local category/recommendation models.
- A monorepo layout separating mobile and backend directories.
- Go module and entry point reserved for backend development.

## Technology

Flutter/Dart and flutter_svg; flutter_riverpod is declared as a dependency. The mobile manifest specifies Dart ^3.11.5, and the Go module declares Go 1.26.2.

## Repository map

| Path | Purpose |
| --- | --- |
| [apps/mobile/lib/main.dart](apps/mobile/lib/main.dart) | Flutter entry point |
| [apps/mobile/lib/pages/home.dart](apps/mobile/lib/pages/home.dart) | Home-screen layout |
| [apps/mobile/lib/mod](apps/mobile/lib/mod) | Local display models |
| [apps/mobile/pubspec.yaml](apps/mobile/pubspec.yaml) | Dependencies and assets |
| [apps/server/cmd/api/main.go](apps/server/cmd/api/main.go) | Empty Go application entry point |

## Local setup

```bash
git clone https://github.com/frontend-alex/Flugo.git
cd Flugo/apps/mobile
flutter pub get
flutter run
```

Select a device or simulator supported by your installed Flutter toolchain. The current UI does not require a running API. If inspecting the backend separately:

```bash
cd apps/server
go run ./cmd/api
```

Run the backend command from the repository root's apps/server directory; it exits without starting a server because main is empty.

## Verification

```bash
flutter analyze
flutter test
```

Run mobile checks from apps/mobile. Generated starter tests may need to be aligned with the custom home screen. No device or runtime verification was performed for this documentation change.

## Limitations and next steps

- There is no implemented Go API or mobile/backend integration.
- The current screen is a UI experiment, not evidence of a delivered morning-routine application.
- Use Loop for the separate native SwiftUI project; this repository remains a Flutter playground.
- The app requests Poppins in main.dart while pubspec.yaml declares Inter, so review font configuration when refining the UI.

## Code review starting points

- [apps/mobile/lib/pages/home.dart](apps/mobile/lib/pages/home.dart)
- [apps/mobile/lib/mod/category_model.dart](apps/mobile/lib/mod/category_model.dart)
- [apps/mobile/lib/mod/recommendation_model.dart](apps/mobile/lib/mod/recommendation_model.dart)
- [apps/server/cmd/api/main.go](apps/server/cmd/api/main.go)
