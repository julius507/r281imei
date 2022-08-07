#!/bin/sh
echo "Restoring IMEI..."
ubus call version set_atcmd_info '{"atcmd":"AT*PROD=2"}' > /dev/null 2&>1
ubus call version set_atcmd_info '{"atcmd":"AT*MRD_IMEI=D"}' > /dev/null 2&>1
ubus call version set_atcmd_info '{"atcmd":"AT*MRD_IMEI=W,0101,01JAN1970,352075060055098"}' > /dev/null 2&>1
ubus call version set_atcmd_info '{"atcmd":"AT*PROD=0"}' > /dev/null 2&>1
echo "Done! Modem is rebooting..."
ubus call version set_atcmd_info '{"atcmd":"AT+RSTSET"}' > /dev/null 2&>1

