# Beshlaw Mason

Reusable [Mason](https://pub.dev/packages/mason_cli) bricks for Flutter projects.

This repository contains reusable templates for:

* Flutter project setup
* Modular architecture
* Generating complete modules with `data`, `domain`, and `presentation` layers

---

## Requirements

Make sure you have Dart installed.

Install Mason CLI:

```bash
dart pub global activate mason_cli
```

Verify the installation:

```bash
mason --version
```

---

# Getting Started

Before using any brick, create a Mason workspace inside your Flutter project:

```bash
mason init
```

This creates:

```text
mason.yaml
```

The `mason.yaml` file keeps track of the bricks used by the project.

---

# Available Bricks

## 1. Flutter Project

The `flutter_project` brick is responsible for generating the initial project structure.

It includes project-level resources such as:

* `core`
* Localization
* Common project files
* Project configuration

### Add the brick

```bash
mason add flutter_project --git-url https://github.com/Beshlaw/beshlaw_mason.git --git-path flutter_project
```

### Generate

```bash
mason make flutter_project --on-conflict overwrite
```

The generated structure will follow the template defined in the brick.

---

# 2. Module

The `module` brick is used to generate a complete business module.

A module represents a specific business/domain area of the application.

For example:

```text
auth
movie
payment
profile
```

Each module follows:

```text
module/
├── data/
│   ├── models/
│   ├── datasources/
│   └── repositories/
│
├── domain/
│   ├── entities/
│   ├── usecases/
│   └── repositories/
│
└── presentation/
    ├── components/
    ├── screens/
    └── controllers/
```

### Add the brick

```bash
mason add module --git-url https://github.com/Beshlaw/beshlaw_mason.git --git-path module
```

### Generate a module

```bash
mason make module --on-conflict overwrite
```

Mason will ask for the module name.

For example:

```text
auth
```

The result will be:

```text
lib/
└── auth/
    ├── data/
    ├── domain/
    └── presentation/
```

The module can contain all functionality related to that business domain.

For example, the `auth` module can contain:

* Sign In
* Sign Up
* Forgot Password
* Reset Password
* OTP Verification
* Change Password
* Logout

---

# Recommended Workflow

## New Flutter Project

Create a new Flutter project first:

```bash
flutter create my_app
```

Enter the project:

```bash
cd my_app
```

Initialize Mason:

```bash
mason init
```

Add the project brick:

```bash
mason add flutter_project --git-url https://github.com/Beshlaw/beshlaw_mason.git --git-path flutter_project
```

Generate the project setup:

```bash
mason make flutter_project
```

---

## Add a New Module

From the Flutter project:

```bash
mason add module --git-url https://github.com/Beshlaw/beshlaw_mason.git --git-path module
```

Then:

```bash
mason make module
```

Enter the module name when prompted.

For example:

```text
auth
```

---

# Mason Commands

## `mason init`

Creates a Mason workspace in the current directory.

```bash
mason init
```

It creates:

```text
mason.yaml
```

---

## `mason add`

Adds a brick to the current Mason workspace.

Example:

```bash
mason add module --git-url https://github.com/Beshlaw/beshlaw_mason.git --git-path module
```

---

## `mason get`

Gets the bricks defined in the current `mason.yaml`.

```bash
mason get
```

Use this after changing or updating the dependencies of the Mason workspace.

---

## `mason make`

Generates files using a brick.

```bash
mason make module
```

---

## `mason upgrade`

Updates the bricks to newer available versions.

```bash
mason upgrade
```

---

## `mason list`

Shows the bricks available in the current workspace.

```bash
mason list
```

---

# Conflict Handling

When generating files, Mason may ask whether existing files should be overwritten.

To automatically overwrite conflicting files:

```bash
mason make flutter_project --on-conflict overwrite
```

Use this carefully because existing files may be replaced.

---

# Architecture

The project uses a modular architecture.

The `lib` directory is organized by business domains:

```text
lib/
├── core/
├── l10n/
├── auth/
├── movie/
└── payment/
```

Each module contains three main layers:

```text
Module
├── data
├── domain
└── presentation
```

### Data

Responsible for external data sources and data implementation.

```text
data/
├── models/
├── datasources/
└── repositories/
```

### Domain

Contains the business logic and domain contracts.

```text
domain/
├── entities/
├── usecases/
└── repositories/
```

### Presentation

Contains the UI and presentation logic.

```text
presentation/
├── components/
├── screens/
└── controllers/
```

---

# Example

After creating a project and generating modules:

```text
lib/
│
├── core/
│
├── l10n/
│
├── auth/
│   ├── data/
│   ├── domain/
│   └── presentation/
│
├── movie/
│   ├── data/
│   ├── domain/
│   └── presentation/
│
└── payment/
    ├── data/
    ├── domain/
    └── presentation/
```

Each module is independent and contains everything related to its business domain.

---

# Updating the Templates

The templates are maintained in this repository.

When the project structure or architecture changes, update the corresponding brick and push the changes to the repository.

Then projects using the bricks can update them with:

```bash
mason upgrade
```

---

# Notes

* `flutter_project` is intended for project-level setup.
* `module` is intended for generating complete business modules.
* Generated files can be modified or deleted manually.
* The architecture is expected to evolve as reusable patterns are identified.
* New reusable structures can be added to the bricks over time.
