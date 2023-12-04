#include "calculator.h"
#include <iostream>

int main() {
    Calculator calc;
    double a = 10.5;
    double b = 5.5;

    std::cout << "Adding " << a << " and " << b << ": " << calc.Add(a, b) << std::endl;
    std::cout << "Subtracting " << b << " from " << a << ": " << calc.Sub(a, b) << std::endl;

    return 0;
}
