// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a messages locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'messages';

  static m0(count) => "You have pushed the button this many times: ${count}";

  static m1(dayOfWeek) => "${Intl.select(dayOfWeek, {'Monday': 'Monday', 'Tuesday': 'Tuesday', 'Wednesday': 'Wednesday', 'Thursday': 'Thursday', 'Friday': 'Friday', 'Saturday': 'Saturday', 'Sunday': 'Sunday', 'None': '-', 'other': '-', })}";

  static m2(points, pointsAsString) => "${Intl.plural(points, zero: '${pointsAsString} points', one: '${pointsAsString} point', other: '${pointsAsString} points')}";

  static m3(errorCode) => "${Intl.select(errorCode, {'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL': 'This account already exists with different credentials.', 'ERROR_CUSTOM_TOKEN_MISMATCH': 'Invalid token configuration.', 'ERROR_DISABLED': 'Indicates the user\'s account is disabled.', 'ERROR_EMAIL_ALREADY_IN_USE': 'The email is already in use by a different account.', 'ERROR_INVALID': 'Indicates the email address is invalid.', 'ERROR_INVALID_ACTION_CODE': 'The activation PIN is expired or has already been used.', 'ERROR_INVALID_CREDENTIAL': 'Your credentials are malformed or invalid.', 'ERROR_INVALID_CUSTOM_TOKEN': 'The custom token format is incorrect.', 'ERROR_INVALID_EMAIL': 'Your email address is malformed.', 'ERROR_NOT_ALLOWED': 'Indicates that email and email sign-in link accounts are not enabled. Enable them in the Auth section of the Firebase console.', 'ERROR_OPERATION_NOT_ALLOWED': 'This authorization method is not enabled. Please choose something different.', 'ERROR_TOO_MANY_REQUESTS': 'You had too many failed attempts. Please wait a couple of minutes and try again.', 'ERROR_USER_DISABLED': 'This accounts was disabled. Please contact customer support if this is a mistake on our side.', 'ERROR_USER_NOT_FOUND': 'If there is no user corresponding to the given input.', 'ERROR_WEAK_PASSWORD': 'Your password is not strong enough.', 'EXPIRED_ACTION_CODE': 'Password reset code has expired.', 'INVALID_ACTION_CODE': 'Password reset code is invalid. This can happen if the code is malformed or has already been used.', 'NO_VERIFICATION': 'We are missing mandatory informations. Please start the login from the beginning.', 'UNKNOWN': 'There was a unknown error. Please begin the login process from the start.', 'other': '', })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "appTitle" : MessageLookupByLibrary.simpleMessage("Collabree"),
    "counterMessage" : m0,
    "dayOfWeek" : m1,
    "exampleOfPlural" : m2,
    "loginErrorMessage" : m3
  };
}
