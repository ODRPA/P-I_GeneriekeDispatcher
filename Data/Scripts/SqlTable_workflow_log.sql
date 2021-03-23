CREATE TABLE [var_WorkflowLogTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[timeStamp] [datetime] NULL,
	[level] [varchar](255) NULL,
	[message] [varchar](max) NULL,
	[logType] [varchar](255) NULL,
	[fingerprint] [varchar](255) NULL,
	[windowsIdentity] [varchar](255) NULL,
	[machineName] [varchar](255) NULL,
	[processName] [varchar](255) NULL,
	[processVersion] [varchar](255) NULL,
	[jobId] [varchar](255) NULL,
	[robotName] [varchar](255) NULL,
	[machineId] [varchar](255) NULL,
	[fileName] [varchar](255) NULL,
	[logF_BusinessProcessName] [varchar](255) NULL,
	[logF_TransactionID] [varchar](255) NULL,
	[logF_TransactionField1] [varchar](255) NULL,
	[logF_TransactionField2] [varchar](255) NULL,
	[logF_TransactionStatus] [varchar](255) NULL,
	[logF_TransactionNumber] [int] NULL,
	[totalExecutionTimeInSeconds] [int] NULL,
	[totalExecutionTime] [varchar](255) NULL,
	[organizationUnitId] [varchar](255) NULL,
	[initiatedBy] [varchar](255) NULL,
 CONSTRAINT [PK_workflow_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [var_WorkflowLogTable]  WITH CHECK ADD  CONSTRAINT [FK_workflow_log_jobs_log] FOREIGN KEY([jobId])
REFERENCES [var_JobLogTable] ([job_id])

ALTER TABLE [var_WorkflowLogTable] CHECK CONSTRAINT [FK_workflow_log_jobs_log]