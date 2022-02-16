import 'package:flutter/material.dart';
import 'package:rate_trip/model/trip.dart';
import 'package:rate_trip/widgets/rate_or_tip.dart';
import 'package:rate_trip/widgets/start_rating.dart';

void main() {
  runApp(const RatingApp());
}

class RatingApp extends StatelessWidget {
  const RatingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RateTrip(),
    );
  }
}

class RateTrip extends StatelessWidget {
  final trip = Trip("Oscar Anyiam", "103 St Finbars Road Bariga Yaba Lagos Nigeria", "assets/face2.jpg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:  StarRating(
            trip: trip,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
