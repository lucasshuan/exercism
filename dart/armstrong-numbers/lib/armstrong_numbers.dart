class ArmstrongNumbers {
  bool isArmstrongNumber(String p) {
    BigInt total = BigInt.zero;
    BigInt runeAmount = BigInt.from(p.runes.length);
    for (var rune in p.runes) {
      BigInt n = BigInt.parse(String.fromCharCode(rune));
      total += n.pow(runeAmount.toInt());
    }
    return total == BigInt.parse(p);
  }
}
