#include "raindrops.h"
#include <string>

using namespace std;

namespace raindrops {
  string convert(int number) {
    string text = "";
    if (number % 3 == 0)
      text += "Pling";
    if (number % 5 == 0)
      text += "Plang";
    if (number % 7 == 0)
      text += "Plong";
    return text.empty() ? to_string(number) : text;
  }
}  // namespace raindrops
