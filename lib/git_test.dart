
import 'git_test_platform_interface.dart';

class GitTest {
  Future<String?> getPlatformVersion() {
    return GitTestPlatform.instance.getPlatformVersion();
  }
}
