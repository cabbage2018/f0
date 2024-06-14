#pragma once

#include "cs104_connection.h"//./lib60870/
#include "hal_time.h"
#include "hal_thread.h"


#include <stdio.h>
#include <stdlib.h>

typedef void (*pConnectionHandler)(void* parameter, CS104_Connection connection, CS104_ConnectionEvent event);
typedef bool (*pAsduHandler) (void*, int, CS101_ASDU);

class IEC104Client
{
protected:
	//static 
		pConnectionHandler pConnectionHandlerArray[1];
	//static 
		pAsduHandler pAsduHandlerArray[1];
		CS104_Connection con;
		CS101_AppLayerParameters alParams;
public:
	IEC104Client();
	int registerConnectedHandler(pConnectionHandler handler);
	int registerReadHandler(pAsduHandler handler);
	int init(const char*hostname, const uint16_t port);
	int read(const int originatorAddr);

	~IEC104Client();
};

