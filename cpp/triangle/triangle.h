#if !defined(TRIANGLE_H)
#define TRIANGLE_H

namespace triangle {
  enum class flavor 
  {
    equilateral,
    isosceles,
    scalene
  };
  flavor kind(double a, double b, double c);
  bool satisfies_triangle_inequality(double a, double b, double c);
  bool is_equilateral(double a, double b, double c);
  bool is_isosceles(double a, double b, double c);
}  // namespace triangle

#endif // TRIANGLE_H