part of 'exampleBloc.dart';

abstract class ExampleState extends Equatable {
  @override
  bool get stringify => true;
}

class ExampleCount extends ExampleState {
  final int count;

  ExampleCount({@required this.count});

  @override
  List<Object> get props => [count];
}
