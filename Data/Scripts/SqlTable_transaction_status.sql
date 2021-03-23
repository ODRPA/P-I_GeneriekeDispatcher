CREATE TABLE [var_TransactionStatusTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transaction_id] [varchar](255) NULL,
	[transaction_nr] [int] NULL,
	[datetime_start] [datetime] NULL,
	[datetime_end] [datetime] NULL,
	[transaction_job_id] [varchar](255) NULL,
	[BusinessRuleException] [varchar](255) NULL,
	[SystemException] [varchar](255) NULL,
	[attempts] [int] NULL,
 CONSTRAINT [PK_[var_TransactionStatusTableName]] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [var_TransactionStatusTable] ADD  CONSTRAINT [DF_[var_TransactionStatusTableName]_attempts]  DEFAULT ((0)) FOR [attempts]

ALTER TABLE [var_TransactionStatusTable]  WITH CHECK ADD  CONSTRAINT [FK_[var_TransactionStatusTableName]_jobs_log] FOREIGN KEY([transaction_job_id])
REFERENCES [var_JobLogTable] ([job_id])

ALTER TABLE [var_TransactionStatusTable] CHECK CONSTRAINT [FK_[var_TransactionStatusTableName]_jobs_log]