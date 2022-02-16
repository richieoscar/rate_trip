import 'package:flutter/material.dart';
import 'package:rate_trip/model/rating.dart';
import 'package:rate_trip/model/trip.dart';
import 'package:rate_trip/util/issue_manager.dart';
import 'package:rate_trip/util/rate_tip_manager.dart';
import 'package:rate_trip/util/rating_manager.dart';
import 'package:rate_trip/util/tip_manager.dart';
import 'package:rate_trip/widgets/add_tip.dart';
import 'package:rate_trip/widgets/custom_bottom_sheet.dart';
import 'package:rate_trip/widgets/issue_item.dart';
import 'package:rate_trip/widgets/issues.dart';
import 'package:rate_trip/widgets/rate_or_tip.dart';
import 'package:rate_trip/widgets/rating_button.dart';
import 'package:rate_trip/widgets/rating_submitted.dart';
import 'package:rate_trip/widgets/submit_button.dart';

class StarRating extends StatefulWidget {
  Color? color;
  final _iconSize = 25.0;
  final Trip trip;

  StarRating({this.color = Colors.black, required this.trip});

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  final _iconSize = 50.0;
  Icon? _icon1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(widget.trip.imageUrl),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            "Rate your trip and thank ${widget.trip.driverName} with a Tip",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text(widget.trip.address,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RatingButton(),
              RatingButton(),
              RatingButton(),
              RatingButton(),
              RatingButton(),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Text(
            "Select an Issue",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: InkWell(
            onTap: () {
              CustomBottomSheet.showBottomSheet(context, RateOrTip());
            },
            child: const Text(
              "Choose Up to Five Issue",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
        ),
        InkWell(
            onTap: () {
              CustomBottomSheet.showBottomSheet(context, AddTip());
            },
            child: const Text("Add Tip",
                style: const TextStyle(color: Colors.green, fontSize: 18))),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: SubmitButton(
            onPressed: () {
              RateTipManger rateTipManger = RateTipManger.instance;
              print(rateTipManger.ratings());
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (_) =>
                          RatingSubmitted(rateTipManger.ratings())));
            },
          ),
        )
      ],
    );
  }
}
