import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'git_test_platform_interface.dart';

/// An implementation of [GitTestPlatform] that uses method channels.
class MethodChannelGitTest extends GitTestPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('git_test');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
