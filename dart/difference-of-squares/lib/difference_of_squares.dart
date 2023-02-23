class DifferenceOfSquares {
  int squareOfSum(int n) {
    int sum = 0;
    for (int i = 1; i <= n; i++) {
      sum += i;
    }
    return sum * sum;
  }

  int sumOfSquares(int n) {
    int sum = 0;
    for (int i = 1; i <= n; i++) {
      sum += i * i;
    }
    return sum;
  }

  int differenceOfSquares(int n) {
    return squareOfSum(n) - sumOfSquares(n);
  }
}
