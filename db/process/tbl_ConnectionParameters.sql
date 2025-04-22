CREATE TABLE [process].[ConnectionParameters](
	[ConnectionId] [int] NOT NULL,
	[ConnectionName] [nvarchar](50) NULL,
	[ServerName] [nvarchar](400) NULL,
	[DatabaseName] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[PasswordSecretName] [nvarchar](50) NULL,
	[PortNo] [int] NULL,
 CONSTRAINT [PK_SQLConnectionParameters] PRIMARY KEY CLUSTERED 
(
	[ConnectionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [AK_ConnectionParameters] UNIQUE NONCLUSTERED 
(
	[ConnectionName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO