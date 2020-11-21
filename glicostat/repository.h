#ifndef REPOSITORY_H
#define REPOSITORY_H
#include "aliment.h"

class Repository
{
public:
    Repository();
    std::string searchAlimentById(int id);
    std::string searchAlimentById(std::string name);
};

#endif // REPOSITORY_H
