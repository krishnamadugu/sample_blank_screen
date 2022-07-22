
import 'sample_platform_interface.dart';

class Sample {
  Future<String?> getPlatformVersion() {
    return SamplePlatform.instance.getPlatformVersion();
  }
}
