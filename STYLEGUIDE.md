# Styleguide

## Constructor

### Named Parameters; if parameter-count > 1

```dart
// Good 😃
class MyClass {
  final String something;

  CollabreeException(this.something);
}

class MyClass {
  final DependencyA depA;
  final DependencyB depB;

  CollabreeException({@required this.depA, @required this.depB});
}

// Bad 😭
class MyClass {
  String something;

  CollabreeException({@required this.something});
}

class MyClass {
  final DependencyA depA;
  final DependencyB depB;

  CollabreeException(this.depA, this.depB);
}
```
