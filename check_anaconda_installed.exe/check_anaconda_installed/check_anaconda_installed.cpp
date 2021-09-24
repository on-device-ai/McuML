// check_anaconda_installed.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <stdio.h>

#include "InstalledPrograms.h"

int main()
{
    vector<Software>* list = InstalledPrograms::GetInstalledPrograms(false);
    for (vector<Software>::iterator it = list->begin(); it != list->end(); it++)
    {
        wstring strAnaconda = L"Anaconda";

        if (it->DisplayName.compare(0, strAnaconda.length(), strAnaconda) == 0)
        {
            printf("The \"%ws\" software is installed.\n", it->DisplayName.c_str());
            return 1;
        }
    }
    return 0;
}