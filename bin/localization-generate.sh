#!/bin/sh
flutter pub run intl_translation:generate_from_arb lib/collabreeLocalizations.dart lib/l10n/*.arb  --output-dir=lib/l10n
