mysql-connector-c++的log功能的开启和关闭：
开启：
  修改mysql_debug.h  启用 CPPCONN_TRACE_ENABLED
  
应用程序配置：
使用Makefile：
	修改Makefile
	make WITH_LOG=1

使用cmake：
	修改CMakeLists.txt
	cmake -DWITH_LOG=true


