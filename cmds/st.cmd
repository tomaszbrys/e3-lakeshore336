#
require stream,2.8.8
require lakeshore336,2.0.2
#
epicsEnvSet("TOP", "$(E3_CMD_TOP)/../")

epicsEnvSet(EPICS_CA_MAX_ARRAY_BYTES,1000000)

epicsEnvSet("IPADDR", "10.0.7.141")
epicsEnvSet("SYS", "LabS-Utgard-VIP:")
epicsEnvSet("DEV", "SES-AmpLI-1")
epicsEnvSet("PREFIX", "ls1")


#Specifying the TCP endpoint and port name
drvAsynIPPortConfigure("$(PREFIX)-asyn-port", "$(IPADDR):7777")


# Define the protocol path
#epicsEnvSet("STREAM_PROTOCOL_PATH", "$(lakeshore336_DB)")
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(TOP)/lakeshore336/lakeshore336App/protocol/")



# dbLoadTemplate("lakeshore336.substitutions", "P=$(PREFIX), PORT=$(PREFIX)-asyn-port, PROTOCOL=lakeshore336.proto, ADDR=7777")

#
epicsEnvSet("EPICS_DB_INCLUDE_PATH", "$(TOP)/lakeshore336/lakeshore336App/Db/")
dbLoadTemplate("$(TOP)/lakeshore336/lakeshore336App/Db/lakeshore336.substitutions", "P=$(PREFIX), PORT=$(PREFIX)-asyn-port, PROTOCOL=lakeshore336.proto, ADDR=7777")


iocInit

dbl > "$(TOP)/$(PREFIX)_PVs.list"
