
# FatiYazdiState Flutter Package

A Flutter package that provides a widget for managing and recreating the state of your app.

## Usage

1. Wrap your `MyApp()` widget with `FatiYazdiState` using `runApp` in your `main.dart`:

   ```dart
   import 'package:flutter/material.dart';
   import 'package:fati_yazdi_state/fati_yazdi_state.dart';

   void main() {
     runApp(FatiYazdiState(child: MyApp()));
   }
   ```

2. Import the package in your Dart code:

   ```dart
   import 'package:fati_yazdi_state/fati_yazdi_state.dart';
   ```

3. To recreate the state of `FatiYazdiState` from anywhere in your app, use:

   ```dart
   FatiYazdiState.fatihStateCreateAgain(context);
   ```

4. If you encounter issues with 'BuildContext' across async gaps, consider using:

   ```dart
   SchedulerBinding.instance.addPostFrameCallback((_) {
     FatiYazdiState.fatihStateCreateAgain(context);
   });
   ```

## Note

Calling `FatiYazdiState.fatihStateCreateAgain` can be relatively expensive. Use it only when necessary.

## Author

This package is developed and maintained by Fatih Çetin. For inquiries, contact: fatih@fatiharge.com
```
