import 'package:flutter_test/flutter_test.dart';
import 'package:git_test/git_test.dart';
import 'package:git_test/git_test_platform_interface.dart';
import 'package:git_test/git_test_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGitTestPlatform
    with MockPlatformInterfaceMixin
    implements GitTestPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GitTestPlatform initialPlatform = GitTestPlatform.instance;

  test('$MethodChannelGitTest is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGitTest>());
  });

  test('getPlatformVersion', () async {
    GitTest gitTestPlugin = GitTest();
    MockGitTestPlatform fakePlatform = MockGitTestPlatform();
    GitTestPlatform.instance = fakePlatform;

    expect(await gitTestPlugin.getPlatformVersion(), '42');
  });
}
