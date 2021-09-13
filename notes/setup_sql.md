# Setup SQL

To get a command prompt run `sqlcmd -S DESKTOP-O9BL882 -E`

Run the following SQL

```sql
ALTER LOGIN sa ENABLE ;  
GO  
ALTER LOGIN sa WITH PASSWORD = 'I.am.ghost.47' ;  
GO  
```

Follow the instructions in Set a Protocol [here](https://social.technet.microsoft.com/wiki/contents/articles/1533.how-to-enable-remote-connections-on-sql-server.aspx)

Make sure the firewall is off or allows the port through.

## Automatically Create Table ID

https://www.mssqltips.com/sqlservertip/1600/auto-generated-sql-server-keys-with-the-uniqueidentifier-or-identity/