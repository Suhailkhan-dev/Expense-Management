/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
#include <iostream>
#include<iomanip>
using namespace std;

class shoppinglist{
    char itemname[25];
    int qty;
    float rate;
    
    public :
    void readitems()
    {
        cout<<endl<<"Enter the item name:";
        cin>>itemname;
        cout<<endl<<"Enter the rate:";
        cin>>rate;
        cout<<endl<<"Enter the quantity:";
        cin>>qty;
    }
    void printitems()
    {
        cout<<setw(15)<<itemname;
        cout<<setw(10)<<qty;
        cout<<setw(5)<<rate;
        cout<<setw(8)<<rate*qty<<endl;
    }
};

int main()
{
    int n;
    clrscr();
    cout<<endl<<"Enter thhe number of items";
    cin>>n;
    shoppinglist item[100];
    for (int i=0;i<n;i++)
    item[i].readitems();
    cout<<setw(30)<<"Shopping List"<<endl;
     cout<<setw(15)<<"Item Name";
        cout<<setw(10)<<"Quantity";
        cout<<setw(5)<<"Rate";
        cout<<setw(8)<<"Amount"<<endl;
    for (int i=0;i<n;i++)
    item[i].printitems();
    getch();

    return 0;
}
