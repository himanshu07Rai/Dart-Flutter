## Privacy in dart

Privacy in Dart exists at the library, rather than the class level.

In dart '\_' is used before the variable name to declare it as private. Unlike other programming languages, here private doesn't mean it is available only to the class it is in, private means it is accessible in the file it is in and not accessible to other files.

---

## Using map

```dart
 import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIdex = 0;
  void _ansQuestion() {
    print("Answered");
    setState(() {
      if (_questionIdex == 1) {
        _questionIdex--;
        return;
      }
      _questionIdex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        "question": "What's your fav color ? ",
        "options": ["Red", "Blue", "Black", "Yellow"]
      },
      {
        "question": "What's your fav animal ? ",
        "options": ["Lion", "Dog", "Cat", "Rabbit"]
      }
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("First ss App Bar"),
          ),
          body: Column(
            children: [
              Question(_questions[_questionIdex]['question']),
              ...(_questions[_questionIdex]['options'] as List<String>)
                  .map((option) {
                return Answer(_ansQuestion, option);
              })
            ],
          )),
    );
  }
}

```

---

## final vs const

**final**

- A variable with the final keyword will be initialized at _runtime_ and can only be assigned for a single time.
- In a class and function, you can define a final variable.
- For Flutter specific, when the state is updated, everything in the build method will be initialized again. This includes all the variables with final.

**const**

- A variable with the const keyword is initialized at _compile-time_ and is already assigned when at runtime.
- You can’t define const inside a class. But you can in a function.
- For Flutter specific, everything in the build method won’t be initialized again when the state is updated.
- const can’t be changed during runtime.

### When to use which keyword?

A simple example for both:

- Use final: If you don’t know what it’s value will be at compile-time. For example, when you can need to get data from an API, this happens when running your code.

- Use const: If you are sure that a value isn’t going to be changed when running your code. For example, when you declare a sentence that always remains the same.

---

## Dart Multiple Constructors

We can only have one unnamed constructor, but you can have any number of additional named constructors.

```dart
class MyClass {
  //These two are private attributes
  int _age;
  String _name;

  //This is a public attribute
  String defaultName = "My Default Name!";

  //Default constructor
  MyClass() {
    _age = 0;
    _name = "Anonymous";
  }

  MyClass.copyContructor(MyClass fromMyClass) {
    this._age = fromMyClass._age;
    this._name = fromMyClass._name;
  }

  MyClass.overloadedContructor(String name, int age) {
    this._age = age;
    this._name = name;
  }

  MyClass.overloadedContructorNamedArguemnts({String name, int age}) {
    this._age = age;
    this._name = name;
  }

  //Overriding the toString() method
  String toString() {
    String retVal = "Name:: " + _name + " | " + "Age:: " + _age.toString();
    return retVal;
  }
}

//The execution starts from here..
void main() {
  MyClass myClass1 = new MyClass();

  //Cannot access oprivate attributes
  //print(myClass1.name);
  //print(myClass1.age);

  //Can access the public attribute
  print("Default Name:: " + myClass1.defaultName);

  print(myClass1.toString());

  MyClass myClass2 = new MyClass.copyContructor(myClass1);

  print(myClass2.toString());

  MyClass myClass3 = new MyClass.overloadedContructor("Amit", 42);

  print(myClass3.toString());

  MyClass myClass4 =
      new MyClass.overloadedContructorNamedArguemnts(age: 42, name: "Amit");

  print(myClass4.toString());
}
```
