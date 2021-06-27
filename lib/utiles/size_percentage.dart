class SizePercentage {
  static double percentage({
    required double totalsize,
    required double percent,
  }) {
    return ((percent / 100.0) * totalsize);
  }
}
