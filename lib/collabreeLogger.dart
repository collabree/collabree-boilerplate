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
