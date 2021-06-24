install.packages("DBI")
install.packages("odbc")


#Verify that odbc recognizes the installed drivers using odbcListDrivers()
library(odbc)
sort(unique(odbcListDrivers()[[1]]))


con <- dbConnect(odbc(), 
                 Driver = "SQL Server", 
                 Server = "localhost\\SQLEXPRESS", 
                 Database = "datawarehouse", 
                 Trusted_Connection = "True")




con <- dbConnect(odbc(), 
                 Driver = "SQL Server", 
                 Server = "10.135.187.91", 
                 Database = "jiradb", 
                 Trusted_Connection = "True")