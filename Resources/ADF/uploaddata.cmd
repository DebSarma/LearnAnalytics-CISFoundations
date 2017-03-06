@echo off
@color 2F
@cls
REM Replace StorageAccountName with the name of your storage account, and Storage Key with the storage account key.

ECHO Uploading the input.log file to the storage account (adfgetstarted container and inputdata folder). 
AzCopy /Source:. /Dest:https://<storageaccountname>.blob.core.windows.net/adfgetstarted/inputdata /DestKey:<storagekey>  /Pattern:input.log

@color 3F
ECHO Creating a container named adfgetstarted in your Azure Blob storage and copying the partitionweblogs.hql file from your local drive to the inputdata folder in the container.
AzCopy /Source:. /Dest:https://<storageaccountname>.blob.core.windows.net/adfgetstarted/script /DestKey:<storagekey>  /Pattern:partitionweblogs.hql
 
@color 4F
ECHO Process Complete. Check your storage account for two new blob objects in the above containers