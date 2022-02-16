class RatingManager {
  RatingManager._internal();
  static final RatingManager _instance = RatingManager._internal();
  static get instance => _instance;

  int _rating = 0;

  int increase() {
    int sum = 0;
    _rating = _rating + 1;
    return _rating;
  }

  int decrease() {
    return _rating--;
  }

  int total() {
    return _rating;
  }
}
