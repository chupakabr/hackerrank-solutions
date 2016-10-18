#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <string>

using namespace std;

class AdvancedArithmetic{
    public:
        virtual int divisorSum(int n)=0;
};

class Calculator : public AdvancedArithmetic {
	int divisorSum(int n) {
		int curDivisor = (int)(n / 2);
		int sum = n; // the number itself is always the divisor
		while (curDivisor > 0) {
			if (n % curDivisor == 0) {
				sum += curDivisor;
			}

			--curDivisor;
		}

		return sum;
	}
};

int main(){
    int n;
    cin >> n;
    AdvancedArithmetic *myCalculator = new Calculator(); 
    int sum = myCalculator->divisorSum(n);
    cout << "I implemented: AdvancedArithmetic\n" << sum;
    return 0;
}

