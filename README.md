安装pkg-config:
sudo apt install -y pkg-config

先设置PKG_CONFIG_PATH变量：
export PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:$(pwd)/modules/pkg-config

然后编写DLL.pc配置文件

参考：
https://cmake.org/cmake/help/latest/module/FindPkgConfig.html


