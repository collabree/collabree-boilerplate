import 'dart:async';
import 'package:flutter/material.dart';
import 'package:collabree/collabreeLocalizations.dart';

class CollabreeLocalizationsDelegate extends LocalizationsDelegate<S> {
  const CollabreeLocalizationsDelegate();

  static const supportedLocals = [Locale('de'), Locale('en')];

  @override
  bool isSupported(Locale locale) => supportedLocals.contains(locale);

  @override
  Future<S> load(Locale locale) => S.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<S> old) => false;
}
