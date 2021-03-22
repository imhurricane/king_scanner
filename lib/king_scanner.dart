import 'dart:async';

import 'package:flutter/services.dart';

class KingScanner {

  static const MethodChannel _channel = const MethodChannel('scan_plugin');

  static Future<String> get scan async {
    final String version = await _channel.invokeMethod('scan');
    return version;
  }
}
