truncate table [process].[PipelineParameter];

insert into [process].[PipelineParameter] 
([PipelineName], [SrcConnectionId], [DstConnectionId],[IsActive], [FileSystem], [Directory], [FileName], [SchemaName], [TableName],
[columnDelimiter], [rowDelimiter], [encoding], [quoteCharacter], [escapeCharacter], [firstRowAsHeader] )
VALUES
('PL_INGESTION_CSV_SQLSATDEMO', 2, 1, 1, 'rawdata', '/adventureworks', 'Person Person.csv', 'demodata', 'Person', ',', 'n/a', 'UTF-8', '"', '"', 1),
('PL_INGESTION_CSV_SQLSATDEMO', 2, 1, 1, 'rawdata', '/adventureworks', 'Person PersonPhone.csv', 'demodata', 'PersonPhone', ',', 'n/a', 'UTF-8', '"', '"', 1),
('PL_INGESTION_CSV_SQLSATDEMO', 2, 1, 1, 'rawdata', '/adventureworks', 'Person PhoneNumberType.csv', 'demodata', 'PhoneNumberType', ',', 'n/a', 'UTF-8', '"', '"', 1);

select * from [process].[PipelineParameter] where PipelineName = 'PL_INGESTION_CSV_SQLSATDEMO';