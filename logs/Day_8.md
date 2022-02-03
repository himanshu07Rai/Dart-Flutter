## null and null safety

When we opt into null safety, types in your code are non-nullable by default, meaning that variables can’t contain null unless you say they can. With null safety, the runtime null-dereference errors turn into edit-time analysis errors.

To indicate that a variable might have the value null, just add ? to its type declaration:

```dart
 int? aNullableInt = null;
```
