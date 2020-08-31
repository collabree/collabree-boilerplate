part of 'exampleBloc.dart';

abstract class ExampleEvent extends Equatable {
  @override
  bool get stringify => true;
}

class ExampleIncremented extends ExampleEvent {
  final int count;

  ExampleIncremented({@required this.count});

  @override
  List<Object> get props => [count];
}

class ExampleDecremented extends ExampleEvent {
  final int count;

  ExampleDecremented({@required this.count});

  @override
  List<Object> get props => [count];
}
