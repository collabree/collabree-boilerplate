import 'package:collabree/collabreeLogger.dart';
import 'package:collabree/constants.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'exampleEvents.dart';
part 'exampleStates.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc()
      : super(ExampleCount(
          count: Constants.counterStartingNumber,
        ));

  @override
  Stream<ExampleState> mapEventToState(ExampleEvent event) async* {
    if (event is ExampleIncremented) {
      yield ExampleCount(count: event.count);
    } else if (event is ExampleDecremented) {
      yield ExampleCount(count: event.count);
    } else {
      CollabreeLogger.instance.wtf(
        'Event=${event.runtimeType}; State=${state.runtimeType}',
      );
    }
  }

  void increment() => add(ExampleIncremented(
        count: state is ExampleCount ? (state as ExampleCount).count + 1 : 0,
      ));

  void decrement() => add(ExampleDecremented(
        count: state is ExampleCount ? (state as ExampleCount).count - 1 : 0,
      ));
}
