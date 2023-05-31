#include "grains.h"

namespace grains {
  unsigned long long square(int tile) {
    if (tile > 1)
      return square(tile-1) * 2;
    else
      return 1ULL;
  }

  unsigned long long total() {
    unsigned long long sum = 0;
    for (int i = 1; i <= 64; i++) {
      sum += square(i);
    }
    return sum;
  }
}  // namespace grains
