import 'package:flutter/material.dart';
import 'package:rate_trip/model/trip.dart';
import 'package:rate_trip/rate_trip.dart';

void main() {
  runApp(const Example());
}

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleHome(),
    );
  }
}

class ExampleHome extends StatelessWidget {
  /// The rate trip package expose a trip class where the uses passes in a trip
  /// 
  /// //invoke the RateTrip class to rate your trip thats all.
  final trip = Trip("Oscar Anyiam",
      "103 St Finbars Road Bariga Yaba Lagos Nigeria", "assets/face2.jpg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: RateTrip(
            trip: trip,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
