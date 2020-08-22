double middleOfThree(double first, double second, double third) {
  if (first > second) {
    return second > third ? second : first > third ? third : first;
  }
  return first > third ? first : second > third ? third : second;
}
