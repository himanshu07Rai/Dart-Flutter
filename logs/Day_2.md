# Data types

- Number

  - int
  - double
  - num (int / double)

- String
  - string
- Boolean

  - bool

- var (inferred type)

- List

  - List <var>
  - List<dynamic>

- Map
  - Map<String,String>

---

## String Interpolation

```dart
    int a = 9;
    String n = 'Hi $a';
    print(n);
```

---

## Functions

Function w/o function keyword

```dart
    void perimeterOfRectangle(int length, int breadth) {
        var perimeter = 2 * (length + breadth);
        print('The perimeter of rectangle is $perimeter');
    }

    void main(List<String> arguments) {
        perimeterOfRectangle(4, 4);
    }

```

### Optional Parameters

Optional parameters can be used when arguments need not be compulsorily passed for a function’s execution. A parameter can be marked optional by appending a question mark to its name. The optional parameter should be set as the last argument in a function.

```dart
    void perimeterOfRectangle(int breadth,[int? length]) {
        var perimeter = 2 * (5 + breadth);
        print('The perimeter of rectangle is $perimeter');
        print(length); //null
    }

    void main(List<String> arguments) {
        perimeterOfRectangle(4);
    }

```

### Optional parameters

```dart
    void test_param(n1,{s1,s2}) {
        print(n1);
        print(s1);
    }

    void main(List<String> arguments) {
        test_param(123);
        test_param(123,s1:'hello');
        test_param(123,s2:'hello',s1:'world');
    }

    123
    null
    123
    hello
    123
    world
```

### Optional Parameters with Default Values

```dart
    void main() {
        test_param(123);
    }
    void test_param(n1,{s1=12}) {
        print(n1);
        print(s1);
    }
```

---

## Checking `null` value

```dart

    void main() {
        testPrice(price:2);
    }

    void testPrice({int? price}) {
        print("The price is ${price ?? 0}");
    }

    // The price is 2

    void main() {
        testPrice();
    }

    void testPrice({int? price}) {
        print("The price is ${price ?? 0}");
    }

    // The price is 0

```

---

## Fat arrow syntax

```dart
    void main() {
        testPrice();
    }

    void testPrice({int? price})=>
        print("The price is ${price ?? 0}");

```

---

## Classes & Objects

[here](https://dart.academy/creating-objects-and-classes-in-dart-and-flutter/)
