#include <string>
#include <iostream>
#include <mysql_driver.h>
#include <cppconn/driver.h>  
#include <cppconn/prepared_statement.h>
#include <cppconn/metadata.h>  
#include <cppconn/exception.h>  

int main(int argc, char** argv)
{ 
    sql::Driver *driver = nullptr;  
    std::unique_ptr<sql::Connection> conn;

    try
    {
        driver = sql::mysql::get_driver_instance();
        conn.reset(driver->connect("tcp://172.17.0.2:3306", "root", "test"));

#if defined(WITH_LOG)
	bool enable = true;
	conn->setClientOption("clientTrace", &enable);
#endif

        conn->setSchema("test");
        conn->setTransactionIsolation(sql::TRANSACTION_REPEATABLE_READ);
        conn->setAutoCommit(false);

        std::unique_ptr<sql::PreparedStatement> stmt;
        const char* sql = "insert into user "
                " (username, userpass) values "
                " (?, md5(?))";
        stmt.reset(conn->prepareStatement(sql));

        stmt->setString(1, "zhangsan");
        stmt->setString(2, "zhangsantest");
        int count = stmt->executeUpdate();
        std::cout << "execute update:" << count << std::endl;

        sql = "insert into user "
                        " (username, userpass) values "
                        " (?, md5(?))";
        stmt.reset(conn->prepareStatement(sql));

        stmt->setString(1, "lisi");
        stmt->setString(2, "lisitest");
        count = stmt->executeUpdate();
        std::cout << "execute update:" << count << std::endl;

        conn->commit();
    }
    catch(sql::SQLException & e)
    {
        std::cout << "exception:" << e.what() << std::endl;
	if (conn)
	{
            std::cout << "rollback ..." << std::endl;
            try {
    	      conn->rollback();
	    }
            catch(sql::SQLException & e)
            {
                 std::cout << "rollback exception:" << e.what() << std::endl;
            }
	}
    }
    catch(...)
    {
       std::cout << "exception:" << "unknown" << std::endl;
    }
    std::cout << "=============" << std::endl;
   return 0;
}

