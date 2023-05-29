#include "triangle.h"
#include <stdexcept>

namespace triangle {
    flavor kind(double a, double b, double c) 
    {
        if (a <= 0.0 || b <= 0.0 || c <= 0.0)
            throw std::domain_error("Invalid input: All values must be higher than zero");
        
        if (!satisfies_triangle_inequality(a, b, c))
            throw std::domain_error("Invalid input: Values doesn't satisfy triangle inequality");
        
        if (is_equilateral(a, b, c))
            return flavor::equilateral;
        else if (is_isosceles(a, b, c))
            return flavor::isosceles;
        else
            return flavor::scalene;
    }

    bool satisfies_triangle_inequality(double a, double b, double c)
    {
        return a + b >= c && a + c >= b && b + c >= a;
    }

    bool is_equilateral(double a, double b, double c)
    {
        return a == b && b == c;
    }

    bool is_isosceles(double a, double b, double c)
    {
        return a == b || b == c || a == c;
    }
}  // namespace triangle
