import 'package:flutter_test/flutter_test.dart';
import 'package:sample/sample.dart';
import 'package:sample/sample_platform_interface.dart';
import 'package:sample/sample_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSamplePlatform 
    with MockPlatformInterfaceMixin
    implements SamplePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SamplePlatform initialPlatform = SamplePlatform.instance;

  test('$MethodChannelSample is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSample>());
  });

  test('getPlatformVersion', () async {
    Sample samplePlugin = Sample();
    MockSamplePlatform fakePlatform = MockSamplePlatform();
    SamplePlatform.instance = fakePlatform;
  
    expect(await samplePlugin.getPlatformVersion(), '42');
  });
}
