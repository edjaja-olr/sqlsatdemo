create user [usr_sqlsatdemo] with password = 'TodayIsSQLSaturday01!';
alter role [db_owner] add member [usr_sqlsatdemo];

create user [adf-demosqlsaturday01] from external provider;
alter role [db_datareader] add member [adf-demosqlsaturday01];