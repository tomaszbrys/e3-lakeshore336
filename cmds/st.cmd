#
require stream,2.8.8
require lakeshore336,2.0.3
#
epicsEnvSet("TOP", "$(E3_CMD_TOP)/../")

epicsEnvSet(EPICS_CA_MAX_ARRAY_BYTES,1000000)


### lakeshore336 (ls1)
epicsEnvSet("IPADDR", "10.0.7.141")
epicsEnvSet("SYS", "UTG-SEE-TEFI:")
epicsEnvSet("DEV", "Tctrl-LS336-002")
epicsEnvSet("PREFIX", "$(SYS)$(DEV)")

#Specifying the TCP endpoint and port name
drvAsynIPPortConfigure("$(PREFIX)-asyn-port", "$(IPADDR):7777")

# Define the protocol path
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(TOP)/lakeshore336/lakeshore336App/protocol/")

# Load db
epicsEnvSet("EPICS_DB_INCLUDE_PATH", "$(TOP)/lakeshore336/lakeshore336App/Db/")
dbLoadTemplate("$(TOP)/lakeshore336/lakeshore336App/Db/lakeshore336.substitutions", "P=$(PREFIX), PORT=$(PREFIX)-asyn-port, IP=$(IPADDR), PROTOCOL=lakeshore336.proto, ADDR=7777")

#Load your database defining the EPICS records for seting a curve to a channel
# dbLoadTemplate(lakeshore336_channelnames.substitutions, "P=$(PREFIX), PORT=$(PORTNAME), ADDR=$(IPPORT)")


#Configure file access
# drvAsynFileConfigure("calib-files", "$(REQUIRE_lakeshore336_PATH)/misc", 15000)
 
#You have to use REQUIRE_lakeshore336_PATH (provided that your module is named lakeshore336).
#The following line in the startup script loads the database that takes care of the actual curve management:
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=1, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=2, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=3, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=4, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=5, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=6, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=7, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=8, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=9, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=10, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=11, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=12, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=13, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=14, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=15, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=16, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=17, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=18, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=19, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=20, CurveType=")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=21, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=22, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=23, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=24, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=25, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=26, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=27, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=28, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=29, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=30, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=31, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=32, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=33, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=34, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=35, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=36, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=37, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=38, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=39, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=40, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=41, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=42, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=43, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=44, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=45, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=46, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=47, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=48, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=49, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=50, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=51, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=52, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=53, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=54, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=55, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=56, CurveType=File")
#dbLoadRecords(lakeshore336_curve_management.db, "P=$(PREFIX), ASYNPORT=$(PORTNAME), ASYNCALIBPORT=calib-files, CurveIndex=57, CurveType=File")
 

# -----------------------------------------------------------------------------
# SNL callback
# -----------------------------------------------------------------------------
# Not yet put this in the substitution file...Can it be put in substitutions?
# Maybe good to have it here with teh SNL stuff..
# P for name and CHANNEL, setCHANNEL, sigCHANNEL for different numbering ...
# -----------------------------------------------------------------------------
# seq callback, "name=1, P=$(PREFIX), sigCHANNEL=0, SIGNAL=KRDG, SETPOINT=SETP_S, setCHANNEL=1, CHANNEL=1"
# seq callback, "name=2, P=$(PREFIX), sigCHANNEL=1, SIGNAL=KRDG, SETPOINT=SETP_S, setCHANNEL=2, CHANNEL=2"
# seq callback, "name=3, P=$(PREFIX), sigCHANNEL=2, SIGNAL=KRDG, SETPOINT=SETP_S, setCHANNEL=3, CHANNEL=3"
# seq callback, "name=4, P=$(PREFIX), sigCHANNEL=3, SIGNAL=KRDG, SETPOINT=SETP_S, setCHANNEL=4, CHANNEL=4"


# -----------------------------------------------------------------------------
# SNL curve_install
# -----------------------------------------------------------------------------
seq install_curve, "P=$(PREFIX), CurvePrefix=File"

iocInit

dbl > "$(TOP)/$(PREFIX)_PVs.list"
