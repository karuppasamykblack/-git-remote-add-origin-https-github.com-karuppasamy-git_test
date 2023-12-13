#include "include/git_test/git_test_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "git_test_plugin.h"

void GitTestPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  git_test::GitTestPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
