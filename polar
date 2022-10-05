#include <iostream>
#include <cmath>
using namespace std;

class polar
{
    float radius, angle;
    public :
        polar () { }
        void get_data(float a, float b)
        {
            radius = a;
            angle = b;
        }
        polar operator + (polar p)
        {
            polar temp;
            float x,y;
            x = radius*cos(angle) + p.radius*cos(p.angle);
            y = radius*sin(angle) + p.radius*sin(p.angle);
            temp.angle = atan(y/x);
            temp.radius = sqrt(x*x+y*y);
            return temp;
        }
        void put_data ()
        {
            cout << "Radius = " << radius << " & Angle = " << angle << endl;
        }
};

int main ()
{
    polar p1,p2,p3;
    float x,y;
    cout << "Enter the value of Polar 1: ";
    cin >> x >> y;
    p1.get_data(x,y);
    cout << "Enter the value of Polar 2: ";
    cin >> x >> y;
    p2.get_data(x,y);
    p3 = p1 + p2;
    p3.put_data();
    return 0;
}
