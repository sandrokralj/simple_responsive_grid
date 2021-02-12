# simple_responsive_grid

A new Flutter package that allows you to create a responsive design in a few simple steps.

## Getting Started

To use this package, add `simple_responsive_grid` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages)

For the best experience with this package you can use [`responsive_builder`](https://pub.dev/packages/responsive_builder) package and add it as a dependency inside your project.

For help getting started with Flutter, view Flutter
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Example
```dart
import 'package:flutter/material.dart';
import 'package:simple_responsive_grid/simple_responsive_grid.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleResponsiveGrid(
      pagePadding: EdgeInsets.all(20), 
      children: [
            ResponsiveAxis(
            flex: 3,
            children: [
              Container(
                height: 500,
                width: 500,
                color: Colors.blue,
              ),
              Container(
                height: 500,
                width: 500,
                color: Colors.red,
              ),
              Container(
                height: 500,
                width: 500,
                color: Colors.lime,
              ),
            ],
          ),
            ResponsiveAxis(
            flex: 5,
            children: [
              Text(
                'HELLO WORLD!',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                'HELLO WORLD!',
                style: TextStyle(fontSize: 40, color: Colors.red),
              ),
            ],
          ),
          ResponsiveAxis(
            flex: 3,
            children: [
              Container(
                height: 500,
                width: 500,
                color: Colors.blue,
              ),
              Container(
                height: 500,
                width: 500,
                color: Colors.red,
              ),
              Container(
                height: 500,
                width: 500,
                color: Colors.lime,
              ),
            ],
         ),
      ],
    );
  }
}
```