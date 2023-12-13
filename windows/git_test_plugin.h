#ifndef FLUTTER_PLUGIN_GIT_TEST_PLUGIN_H_
#define FLUTTER_PLUGIN_GIT_TEST_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace git_test {

class GitTestPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  GitTestPlugin();

  virtual ~GitTestPlugin();

  // Disallow copy and assign.
  GitTestPlugin(const GitTestPlugin&) = delete;
  GitTestPlugin& operator=(const GitTestPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace git_test

#endif  // FLUTTER_PLUGIN_GIT_TEST_PLUGIN_H_
