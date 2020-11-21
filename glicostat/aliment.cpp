#include "aliment.h"

Aliment::Aliment()
{
    this->carbo=0;
    this->glucide=0;
    this->id=0;
    this->name="";
}

Aliment::Aliment(int id,std::string name, double masa,double carbo,double glucide){
    this->carbo=carbo;
    this->glucide=glucide;
    this->id=id;
    this->name=name;
    this->masa=masa;
}

//setters
void Aliment::setName(std::string newName){
     this->name=newName;
}
void Aliment::setId(double newId){
    this->id=newId;
}
void Aliment::setMasa(double newMasa){
    this->masa=newMasa;
}
void Aliment::setCarbo(double newCarbo){
    this->carbo=newCarbo;
}
void Aliment::setGlucide(double newGlucide){
    this->glucide=newGlucide;
}

//getters
std::string Aliment::getName(){
     return this->name;
}
double Aliment::getId(){
   return  this->id;
}
double Aliment::getMasa(){
    return this->masa;
}
double Aliment::getCarbo(){
    return this->carbo;
}
double Aliment::getGlucide(){
   return  this->glucide;
}
