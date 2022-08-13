#include <string>
#include <iostream>
#include <mysql_driver.h>
#include <cppconn/driver.h>  
#include <cppconn/statement.h>
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
        conn->setSchema("test");
        conn->setTransactionIsolation(sql::TRANSACTION_REPEATABLE_READ);
        conn->setAutoCommit(false);

	std::unique_ptr<sql::Statement> stmt;
        stmt.reset(conn->createStatement());

        std::unique_ptr<sql::ResultSet> rs;
        rs.reset(stmt->executeQuery("select * from user"));
        while(rs->next())
	{  
            int id = rs->getInt("userid");
            std::string name = rs->getString("username");
            std::cout << id << " : " << name << std::endl;
	}  
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

