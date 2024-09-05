enum Season {
  kharif,
  wholeYear,
  autumn,
  rabi;

  @override
  String toString() {
    switch (this) {
      case Season.kharif:
        return 'Kharif';
      case Season.wholeYear:
        return 'Whole Year';
      case Season.autumn:
        return 'Autumn';
      case Season.rabi:
        return 'Rabi';
      default:
        return '';
    }
  }
}
