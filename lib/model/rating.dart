class Rating {
  int _rating;
  int _tip;
  List<String> _issues;

  get tip => _tip;

  set tip(value) => _tip = value;

  get rating => _rating;

  set rating(value) => _rating = value;

  get issues => _issues;

  set issues(value) => _issues = value;

  Rating(this._rating, this._issues, this._tip);

  

  @override
  String toString() => 'Rating(_rating: $_rating, _issues: $_issues _tip: $_tip,)';
}
