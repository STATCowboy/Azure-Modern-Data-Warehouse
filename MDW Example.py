# Databricks notebook source
# DO NOT ACCESS YOUR Azure Data Lake with the STORAGE KEY Like This!!! (Just for Demo purposes)
# Create a Azure Key Vault
# Use a Secret Store in Databricks
# Use an App Registration and Secret

storagekey = "<Storage Account Key>"
accountname = "<Storage Account Name>"
containername = "<Container Name>"
foldername = "<Folder Name>"
filename = "<filename>.parquet"

spark.conf.set("fs.azure.account.key."+accountname+".dfs.core.windows.net", storagekey)

filesystem = "abfss://"+containername+"@"+accountname+".dfs.core.windows.net/"

print(filesystem+foldername+"/"+filename)

dbutils.fs.ls(filesystem+foldername)

customeraddress = spark.read.parquet(filesystem+foldername+"/"+filename)
customeraddress.printSchema()


# COMMAND ----------

customeraddress.createOrReplaceTempView("customeraddressview")
customerDF = spark.sql("SELECT CustomerID, AddressId, AddressType from customeraddressview")

# COMMAND ----------

display(customeraddress)
