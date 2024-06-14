// Win32ProjectRunner.cpp : 定义控制台应用程序的入口点。
//

//#include "stdafx.h"

#include "IEC104Client.h"

int main()
{
	IEC104Client*sampleClient = new IEC104Client();
	sampleClient->init("127.0.0.1", 2404);
	delete sampleClient;
    return 0;
}

