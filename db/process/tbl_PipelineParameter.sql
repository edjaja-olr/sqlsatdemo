DROP TABLE [process].[PipelineParameter];
GO

CREATE TABLE [process].[PipelineParameter](
	[PipelineParameterId] [int] IDENTITY(1,1) NOT NULL,
	[PipelineName] [nvarchar](200) NOT NULL,
	[SrcConnectionId] [int] NOT NULL,
	[DstConnectionId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[FileSystem] [nvarchar](100) NOT NULL,
	[Directory] [nvarchar](100) NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[SchemaName] [nvarchar](50) NOT NULL,
	[TableName] [nvarchar](50) NOT NULL,
	[ColumnDelimiter] [nvarchar](10) NULL,
	[RowDelimiter] [nvarchar](10) NULL,
	[Encoding] [nvarchar](10) NULL,
	[QuoteCharacter] [nvarchar](10) NULL,
	[EscapeCharacter] [nvarchar](10) NULL,
	[FirstRowAsHeader] [bit] NULL,
 CONSTRAINT [PK_PipelineParameter] PRIMARY KEY CLUSTERED 
(
	[PipelineParameterId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO

ALTER TABLE [process].[PipelineParameter]  WITH CHECK ADD  CONSTRAINT [FK_PipelineParameter_ConnectionParameters_DstConnectionId] FOREIGN KEY([DstConnectionId])
REFERENCES [process].[ConnectionParameters] ([ConnectionId])
GO

ALTER TABLE [process].[PipelineParameter] CHECK CONSTRAINT [FK_PipelineParameter_ConnectionParameters_DstConnectionId]
GO

ALTER TABLE [process].[PipelineParameter]  WITH CHECK ADD  CONSTRAINT [FK_PipelineParameter_ConnectionParameters_SrcConnectionId] FOREIGN KEY([SrcConnectionId])
REFERENCES [process].[ConnectionParameters] ([ConnectionId])
GO

ALTER TABLE [process].[PipelineParameter] CHECK CONSTRAINT [FK_PipelineParameter_ConnectionParameters_SrcConnectionId]
GO

