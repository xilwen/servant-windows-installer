#ifndef WINDOWSREGISTRY_H
#define WINDOWSREGISTRY_H

#include <string>
#include <windows.h>

class WindowsRegistry
{
public:
    WindowsRegistry();
    static std::wstring getData(HKEY root, std::wstring key, std::wstring name);
    ~WindowsRegistry();
};

#endif // WINDOWSREGISTRY_H
