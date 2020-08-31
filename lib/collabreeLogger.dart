import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class CollabreeOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    event.lines.forEach(print);
  }
}

class CollabreeLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}

class CollabreeLogger {
  static Logger instance = Logger(
    printer: PrettyPrinter(colors: false, printEmojis: true, printTime: true),
    output: CollabreeOutput(),
    filter: CollabreeLogFilter(),
  );

  static void setup() {}
}

class LoggingBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    CollabreeLogger.instance.i(event.toString());
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    CollabreeLogger.instance.i(transition.toString());
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    super.onError(cubit, error, stackTrace);
    CollabreeLogger.instance.i(error.toString());
  }
}
