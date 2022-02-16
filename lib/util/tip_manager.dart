import 'package:rate_trip/model/rating.dart';
import 'package:rate_trip/widgets/issues.dart';

class TipManager {
  TipManager._internal();
  static final TipManager _instance = TipManager._internal();
  static get instance => _instance;
  int _tip = 0;

  int addTip(int tipAmount) {
   return  _tip += tipAmount;
  }

  int reduceTip(int tipAmount) {
   return _tip -= tipAmount;
  }

  int tips() {
    return _tip;
  }
}
