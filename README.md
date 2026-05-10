# Self-Improving App - Monorepo

> Action before reward - behavioral intervention for compulsive phone use.

## Structure

| Path | Description |
|------|-------------|
| `apps/mobile` | Flutter (Dart) - Android + iOS |
| `apps/server` | Go (Fiber) - REST API |
| `packages` | Shared contracts and types for future phases |

## Quick Start

```bash
# Prerequisites: Flutter 3.22+, Go 1.22+, Docker

# 1. Start local DB
docker-compose up -d

# 2. Run server
cd apps/server
cp .env.example .env
go run ./cmd/api

# 3. Run mobile
cd apps/mobile
cp .env.example .env
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run
```

## Tech Stack

- **Mobile:** Flutter, Riverpod, Isar DB, Supabase Auth, go_router
- **Server:** Go, Fiber, pgx, PostgreSQL, Supabase JWT validation
- **Auth:** Supabase (cloud-hosted)
- **Local dev DB:** Docker (PostgreSQL 16)

## Development Checks

```bash
cd apps/server && go vet ./... && go test ./... -race -cover
cd apps/mobile && flutter analyze && flutter test
```
