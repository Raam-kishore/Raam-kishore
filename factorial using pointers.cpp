
#include <iostream>
using namespace std;

void findFact(int,int*);
int main()
{
         int fact;
         int num1;
		cout<<"Enter any number to find the factorial :\n";
		cin>>num1;
         findFact(num1,&fact);
         cout<<"The factorial of"<<"  "<<num1<<" "<<"is "<<fact;
         return 0;
        }

void findFact(int n,int *f)
		{
        int i;

       *f =1;
       for(i=1;i<=n;i++)
       *f=*f*i;
       }