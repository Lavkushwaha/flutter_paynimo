
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPaynimo {
  static const MethodChannel _channel = MethodChannel('flutter_paynimo');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
