import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sample_method_channel.dart';

abstract class SamplePlatform extends PlatformInterface {
  /// Constructs a SamplePlatform.
  SamplePlatform() : super(token: _token);

  static final Object _token = Object();

  static SamplePlatform _instance = MethodChannelSample();

  /// The default instance of [SamplePlatform] to use.
  ///
  /// Defaults to [MethodChannelSample].
  static SamplePlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SamplePlatform] when
  /// they register themselves.
  static set instance(SamplePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
