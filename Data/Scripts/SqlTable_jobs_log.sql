CREATE TABLE [var_JobLogTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[start_datetime] [datetime] NULL,
	[end_datetime] [datetime] NULL,
	[job_id] [varchar](255) NOT NULL,
	[process_name] [varchar](255) NULL,
	[process_version] [varchar](255) NULL,
	[machine_name] [varchar](255) NULL,
	[robot_name] [varchar](255) NULL,
	[end_trigger] [varchar](255) NULL,
 CONSTRAINT [PK_jobs_log] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]