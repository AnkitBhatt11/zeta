//
// Generated file. Do not edit.
//

// ignore_for_file: directives_ordering
// ignore_for_file: lines_longer_than_80_chars

import 'package:libphonenumber_web/libphonenumber_web.dart';
import 'package:location_web/location_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(Registrar registrar) {
  LibPhoneNumberPlugin.registerWith(registrar);
  LocationWebPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
