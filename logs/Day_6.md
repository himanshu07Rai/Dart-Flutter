# Scaffold

Scaffold class is an expandable widget that fills the available space or the screen. It provides an API to display the main widgets of the application such as Drawer, SnackBar, Bottom-Sheet, FloatingActionButton, AppBar, and BottomNavigationBar, etc.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App Bar"),
        ),
        body: Text("This is my default body"),
      ),
    );
  }
}
```

## Types of widgets

- Visible

  - Text()
  - Card()

- Invisible

  - Row
  - Column
  - ListView

Widgets are normal Dart classes / objects. But they're only usable as Widgets if you extend StatelessWidget or StatefulWidget and add a build() method.

## Stateless vs Stateful

![image](https://user-images.githubusercontent.com/64080063/151775266-827b944f-129b-4cd8-94d7-f3314e7dd240.png)

- Whilst you can add (and also change) properties in a StatelessWidget, there's no way of telling Flutter that it should re-run build() upon such changes.

- setState() is a "trigger" that informs Flutter that it needs to re-run build() of the Widget
