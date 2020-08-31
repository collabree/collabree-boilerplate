// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static m0(count) => "Du hast den Button ${count} mal gedrückt.";

  static m1(dayOfWeek) => "${Intl.select(dayOfWeek, {'Monday': 'Montag', 'Tuesday': 'Dienstag', 'Wednesday': 'Mittwoch', 'Thursday': 'Donnerstag', 'Friday': 'Freitag', 'Saturday': 'Samstag', 'Sunday': 'Sonntag', 'None': '-', 'other': '-', })}";

  static m2(points, pointsAsString) => "${Intl.plural(points, zero: '${pointsAsString} Punkte', one: '${pointsAsString} Punkt', other: '${pointsAsString} Punkte')}";

  static m3(errorCode) => "${Intl.select(errorCode, {'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL': 'Dieses Konto existiert bereits mit anderen Anmeldeinformationen.', 'ERROR_CUSTOM_TOKEN_MISMATCH': 'Ungültige Token-Konfiguration. ', 'ERROR_DISABLED': 'Zeigt an, dass das Konto des Benutzers deaktiviert ist.', 'ERROR_EMAIL_ALREADY_IN_USE': 'Die E-Mail wird bereits von einem anderen Konto verwendet.', 'ERROR_INVALID': 'Zeigt an, dass die E-Mail-Adresse ungültig ist. ', 'ERROR_INVALID_ACTION_CODE': 'Die Aktivierungs-PIN ist abgelaufen oder wurde bereits verwendet.', 'ERROR_INVALID_CREDENTIAL': 'Ihre Anmeldedaten sind fehlerhaft oder ungültig. ', 'ERROR_INVALID_CUSTOM_TOKEN': 'Das benutzerdefinierte Token-Format ist falsch.', 'ERROR_INVALID_EMAIL': 'Ihre E-Mail-Adresse ist fehlerhaft.', 'ERROR_NOT_ALLOWED': 'Zeichnet an, dass E-Mail- und E-Mail-Anmeldelink-Konten nicht aktiviert sind. Aktivieren Sie sie im Auth-Abschnitt der Firebase-Konsole.', 'ERROR_OPERATION_NOT_ALLOWED': 'Diese Autorisierungsmethode ist nicht aktiviert. Bitte wählen Sie etwas anderes.', 'ERROR_TOO_MANY_REQUESTS': 'Sie hatten zu viele Fehlversuche. Bitte warten Sie ein paar Minuten und versuchen Sie es erneut.', 'ERROR_USER_DISABLED': 'Dieses Konto wurde deaktiviert. Bitte wenden Sie sich an den Kundendienst, wenn dies ein Fehler unsererseits ist.', 'ERROR_USER_NOT_FOUND': 'Wenn es keinen Benutzer gibt, der der gegebenen Eingabe entspricht.', 'ERROR_WEAK_PASSWORD': 'Ihr Passwort ist nicht stark genug.', 'EXPIRED_ACTION_CODE': 'Der Code zum Zurücksetzen des Passworts ist abgelaufen.', 'INVALID_ACTION_CODE': 'Der Code zum Zurücksetzen des Passworts ist ungültig. Dies kann passieren, wenn der Code missgebildet ist oder bereits benutzt wurde.', 'NO_VERIFICATION': 'Es fehlen obligatorische Angaben. Bitte starten Sie die Anmeldung von Anfang an.', 'UNKNOWN': 'Es ist ein unbekannter Fehler aufgetreten. Bitte beginnen Sie den Anmeldevorgang von Anfang an.', 'other': '', })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "appTitle" : MessageLookupByLibrary.simpleMessage("Collabree"),
    "counterMessage" : m0,
    "dayOfWeek" : m1,
    "exampleOfPlural" : m2,
    "loginErrorMessage" : m3
  };
}
