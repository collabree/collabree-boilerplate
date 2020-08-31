import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:collabree/l10n/messages_all.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class S {
  static Future<S> load(Locale locale) async {
    final localeName = locale.countryCode == null || locale.countryCode.isEmpty
        ? locale.languageCode
        : locale.toString();

    final canonicalLocaleName = Intl.canonicalizedLocale(localeName);

    await initializeMessages(canonicalLocaleName);
    Intl.defaultLocale = canonicalLocaleName;

    return S();
  }

  static String get languageCode => Intl.defaultLocale.substring(0, 2);

  static S of(BuildContext context) => Localizations.of<S>(context, S);

  static String getLocalizedString(BuiltMap<String, String> data) {
    if (data.keys.contains(Intl.defaultLocale)) {
      return data[Intl.defaultLocale];
    }

    final shortLocale = Intl.defaultLocale.substring(0, 1);
    if (data.keys.contains(shortLocale)) {
      return data[shortLocale];
    }

    if (data.keys.contains('en')) {
      return data['en'];
    }

    return '';
  }

  String get appTitle => Intl.message(
        'Collabree',
        name: 'appTitle',
        desc: 'The title of the app.',
      );

  String get incrementButton => Intl.message(
        'Increment',
        name: 'incrementButton',
        desc: 'Action Button Name to increment the counter',
      );

  String counterMessage(int count) => Intl.message(
        'You have pushed the button this many times: $count',
        name: 'counterMessage',
        desc: 'Simple message that shows the count',
        args: [count],
      );

  String exampleOfPlural(int points, String pointsAsString) => Intl.plural(points,
      name: 'exampleOfPlural',
      zero: '$pointsAsString points',
      one: '$pointsAsString point',
      other: '$pointsAsString points',
      args: [points, pointsAsString]);

  String dayOfWeek(String dayOfWeek) => Intl.select(
        dayOfWeek,
        {
          'Monday': 'Monday',
          'Tuesday': 'Tuesday',
          'Wednesday': 'Wednesday',
          'Thursday': 'Thursday',
          'Friday': 'Friday',
          'Saturday': 'Saturday',
          'Sunday': 'Sunday',
          'None': '-',
          'other': '-',
        },
        name: 'dayOfWeek',
        desc: 'Name of the day in a week',
        args: [dayOfWeek],
      );

  String loginErrorMessage(String errorCode) => Intl.select(
        errorCode,
        {
          'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL':
              'This account already exists with different credentials.',
          'ERROR_CUSTOM_TOKEN_MISMATCH': 'Invalid token configuration.',
          'ERROR_DISABLED': 'Indicates the user\'s account is disabled.',
          'ERROR_EMAIL_ALREADY_IN_USE':
              'The email is already in use by a different account.',
          'ERROR_INVALID': 'Indicates the email address is invalid.',
          'ERROR_INVALID_ACTION_CODE':
              'The activation PIN is expired or has already been used.',
          'ERROR_INVALID_CREDENTIAL': 'Your credentials are malformed or invalid.',
          'ERROR_INVALID_CUSTOM_TOKEN': 'The custom token format is incorrect.',
          'ERROR_INVALID_EMAIL': 'Your email address is malformed.',
          'ERROR_NOT_ALLOWED':
              'Indicates that email and email sign-in link accounts are not enabled. Enable them in the Auth section of the Firebase console.',
          'ERROR_OPERATION_NOT_ALLOWED':
              'This authorization method is not enabled. Please choose something different.',
          'ERROR_TOO_MANY_REQUESTS':
              'You had too many failed attempts. Please wait a couple of minutes and try again.',
          'ERROR_USER_DISABLED':
              'This accounts was disabled. Please contact customer support if this is a mistake on our side.',
          'ERROR_USER_NOT_FOUND':
              'If there is no user corresponding to the given input.',
          'ERROR_WEAK_PASSWORD': 'Your password is not strong enough.',
          'EXPIRED_ACTION_CODE': 'Password reset code has expired.',
          'INVALID_ACTION_CODE':
              'Password reset code is invalid. This can happen if the code is malformed or has already been used.',
          'NO_VERIFICATION':
              'We are missing mandatory informations. Please start the login from the beginning.',
          'UNKNOWN':
              'There was a unknown error. Please begin the login process from the start.',
          'other': errorCode,
        },
        name: 'loginErrorMessage',
        desc:
            'User-friendly translations of ErrorCodes coming from a failed login process',
        args: [errorCode],
      );
}
