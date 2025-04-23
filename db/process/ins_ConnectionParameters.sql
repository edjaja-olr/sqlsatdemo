insert into [process].[ConnectionParameters]
(ConnectionId, ConnectionName, ServerName, DatabaseName, UserName, PasswordSecretName, PortNo)
VALUES
(1, 'AzSQL-SQLSatDemo', 'azsql-sqlsat01.database.windows.net', 'SQLSaturdayDemo', 'usr_sqlsatdemo', 'kvAzSQLsqlsatdemo', 1433),
(2, 'ADLS-SQLSatDemo', 'https://stadlssqlsat.dfs.core.windows.net', 'N/A', 'N/A', 'N/A', 0);

select * from process.ConnectionParameters
