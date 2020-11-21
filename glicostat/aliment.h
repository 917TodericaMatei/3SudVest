#ifndef ALIMENT_H
#define ALIMENT_H
#include <QObject>
#include <string>

class Aliment:public QObject
{
private:
    Q_OBJECT
    int id;
    std::string name;
    double masa,carbo,glucide;

public:
    Aliment();
    Aliment(int,std::string,double,double,double);
    void setName(std::string);
    void setId(double);
    void setMasa(double);
    void setCarbo(double);
    void setGlucide(double);

    std::string getName();
    double getId();
    double getMasa();
    double getCarbo();
    double getGlucide();
};

#endif // ALIMENT_H
