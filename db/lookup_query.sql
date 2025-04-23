select cpsrc.ServerName as SrcServerName,
    cpsrc.DatabaseName as SrcDatabaseName,
    cpsrc.PasswordSecretName as srcSecretName,
    cpsrc.UserName as SrcUserName,
    cpdst.ServerName as DstServerName,
    cpdst.DatabaseName as DstDatabaseName,
    cpdst.PasswordSecretName as dstSecretName,
    cpdst.UserName as DstUserName,
    pp.*
from process.PipelineParameter pp
    join process.ConnectionParameters cpsrc on cpsrc.ConnectionId = pp.SrcConnectionId
    join process.ConnectionParameters cpdst on cpdst.ConnectionId = pp.DstConnectionId
where pp.PipelineName = 'PL_INGESTION_CSV_SQLSATDEMO' and pp.IsActive = 1
