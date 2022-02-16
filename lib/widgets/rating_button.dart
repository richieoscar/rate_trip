import 'package:flutter/material.dart';
import 'package:rate_trip/util/rating_manager.dart';
import 'package:rate_trip/util/tip_manager.dart';

class RatingButton extends StatefulWidget {
  @override
  _RatingButtonState createState() => _RatingButtonState();
}

class _RatingButtonState extends State<RatingButton> {
  final _iconSize = 50.0;
  bool isClicked = false;

  final Icon _icon2 = const Icon(
    Icons.star,
    color: Colors.amber,
    size: 50.0,
  );
  final Icon _icon = const Icon(
    Icons.star,
    color: Colors.black,
    size: 50.0,
  );
  final Icon _initIcon1 = const Icon(
    Icons.star_border_outlined,
    color: Colors.grey,
    size: 50.0,
  );

  RatingManager _ratingManager = RatingManager.instance;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
           _ratingManager.increase();
            print(_ratingManager.increase());
          if (isClicked) {
           
           
            setState(() {
              isClicked = false;
            });
          } else {
            _ratingManager.decrease();
            setState(
              () {
                isClicked = true;
              },
            );
          }
        },
        icon: isClicked ? _icon2 : _initIcon1);
  }
}
