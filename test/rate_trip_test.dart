import 'package:flutter_test/flutter_test.dart';

import 'package:rate_trip/rate_trip.dart';
import 'package:rate_trip/util/issue_manager.dart';
import 'package:rate_trip/util/rating_manager.dart';
import 'package:rate_trip/util/tip_manager.dart';

void main() {
  test('tip Manager Test', () {
    TipManager tipManager = TipManager.instance;
    int tip = 0;

    expect(tip, tipManager.tips());
  });

  test('Add Tip Test', () {
    TipManager tipManager = TipManager.instance;
    int tip = 200;

    expect(tip, tipManager.addTip(200));
  });

  test('Reduce Tip Test', () {
    TipManager tipManager = TipManager.instance;
    int tip = tipManager.addTip(1000);

    expect(700, tipManager.reduceTip(300));
  });

  test('Get Total Tip Test', () {
    TipManager tipManager = TipManager.instance;
    int tip = tipManager.addTip(2000);

    expect(tip, tipManager.tips());
  });

  test('Issue Manager Test', () {
    IssueManager issueManager = IssueManager.instance;
    int issues = 0;

    expect(issues, issueManager.issues().length);
  });

  test('Add Issue Test', () {
    IssueManager issueManager = IssueManager.instance;
    int issues = 1;
    issueManager.add("Drunk Driving");

    expect(issues, issueManager.issues().length);
  });

  test('Remove Issue Test', () {
    IssueManager issueManager = IssueManager.instance;
    int issues = 2;
    issueManager.add("Drunk Driving");
    issueManager.add("Drunk");
    issueManager.add("Bad Attitude");
    issueManager.remove("Drunk");

    expect(issues, issueManager.issues().length);
  });

  test('Rating Manager Test', () {
    RatingManager ratingManager = RatingManager.instance;
    int ratings = 0;

    expect(ratings, ratingManager.total());
  });

  test('Add Rating Test', () {
    RatingManager ratingManager = RatingManager.instance;
    int ratings = ratingManager.increase();

    expect(ratings, ratingManager.total());
  });
}
