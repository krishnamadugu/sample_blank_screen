import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sample_platform_interface.dart';

/// An implementation of [SamplePlatform] that uses method channels.
class MethodChannelSample extends SamplePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sample');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
