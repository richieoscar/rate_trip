import 'package:rate_trip/model/rating.dart';
import 'package:rate_trip/util/issue_manager.dart';
import 'package:rate_trip/util/rating_manager.dart';
import 'package:rate_trip/util/tip_manager.dart';

class RateTipManger {
  RateTipManger._internal();
  static final RateTipManger _instance = RateTipManger._internal();
 static  get instance => _instance;

  static final TipManager _tipManager = TipManager.instance;
  final IssueManager _issueManager = IssueManager.instance;
  final RatingManager _ratingManager = RatingManager.instance;

  Rating ratings() {
    Rating rating = Rating(
        _tipManager.tips(), _issueManager.issues(), _ratingManager.total());
    return rating;
  }
}
