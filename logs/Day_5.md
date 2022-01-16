# First app from scratch

```dart
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Text("Hello"),);
  }
}
```

- main function is called whenever the app launches.
- runApp is a function provided by the flutter team under material.dart package that takes the widget and prints it on the screen.
- need to extend a base widget class to create any widget.
- runApp calls the builed method of the widget class which is responsible for returning a widget.
- runApp takes the widget object you pass to it and ensures that the widget tree of that widget gets created.
- build() returns a so-called "widget tree" which tells Flutter what to draw onto the screen.
- Flutter is all about buildings apps and for that, you need user interfaces. You build these user interfaces with Widgets => The core UI building blocks.

---

![image](https://user-images.githubusercontent.com/64080063/149663116-fcfbc02b-2e8c-4ab9-8c9a-2fb8cac52b6e.png)

---

## Class constructor

```dart
class Person{
  String? name;
  int? age;

  Person(String inputName,int age){
    name=inputName ;
    this.age=age;
  }
}

void main() {
  var p = Person("arcdh",30);
  print(p.age);
}

```

**Shorthand**

```dart
class Person{
  String? name;
  int? age;

  Person(this.name,this.age);
}

void main() {
  var p = Person("arcdh",20);
  print(p.age);
}

```

**Named arguments**

```dart
class Person{
  String? name;
  int? age;

  Person({this.name,this.age});
}

void main() {
  var p = Person(age:20,name:"arcdh");
  print(p.age);
}
```
