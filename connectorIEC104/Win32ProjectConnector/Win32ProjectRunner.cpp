// Win32ProjectRunner.cpp : �������̨Ӧ�ó������ڵ㡣
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

