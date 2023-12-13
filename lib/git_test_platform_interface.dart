import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'git_test_method_channel.dart';

abstract class GitTestPlatform extends PlatformInterface {
  /// Constructs a GitTestPlatform.
  GitTestPlatform() : super(token: _token);

  static final Object _token = Object();

  static GitTestPlatform _instance = MethodChannelGitTest();

  /// The default instance of [GitTestPlatform] to use.
  ///
  /// Defaults to [MethodChannelGitTest].
  static GitTestPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GitTestPlatform] when
  /// they register themselves.
  static set instance(GitTestPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
