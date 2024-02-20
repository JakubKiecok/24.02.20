#include <iostream>
#include <math.h>
using namespace std;

class Ep
{
public:
	int m;
	int h;
	const int g = 10;
	float wynik() {
		return this->m * this->h * this->g;
	}
};
class Ek
{
public:
	int m;
	int v;
	float wynik() {
		return (this->m * pow(this->v,2))/2;
	}
};
class Em
{
public:
	Ek ek;
	Ep ep;
	float wynik() {
		
		return ek.wynik() + ep.wynik();
	}
};
class Uruchom
{
public:
	void ep() {
		Ep ep;
		ep.h = 5;
		ep.m = 2;
		cout << "Ep = " << ep.wynik() << endl;
	}
	void ek() {
		Ek ek;
		ek.v = 2;
		ek.m = 5;
		cout << "Ek = " << ek.wynik() << endl;
	}
	void em() {
		Em em;
		cout << "Em = " << em.wynik() << endl;
	}
	void start() {
		this->ep();
		this->ek();
		this->em();
	}
};

int main()
{
	Uruchom wykonaj;
	wykonaj.start();
	return EXIT_SUCCESS;
}