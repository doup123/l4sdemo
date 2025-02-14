#ifndef __RESOURCES_H_
#define __RESOURCES_H_

#include <QCoreApplication>
#include <QString>
#include <cstdlib>

static inline std::string res_path(const char *name)
{
    return (QCoreApplication::applicationDirPath() + name).toStdString();
}

static inline std::string safe_getenv(const char *key)
{
    const char *v = std::getenv(key);
    if (!v)
        return std::string(key) + " is undefined!";
    return std::string(v);
}

#endif
