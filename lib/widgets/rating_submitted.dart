import 'package:flutter/material.dart';
import 'package:rate_trip/model/rating.dart';
import 'package:rate_trip/widgets/custom_button.dart';

class RatingSubmitted extends StatelessWidget {
  final Rating rating;
  const RatingSubmitted(this.rating);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child:
                Icon(Icons.verified_outlined, color: Colors.green, size: 100),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text("Thank You for Your Rating",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center),
          ),
          rating.issues.length != 0
              ? Text(
                  "Your Issues have been Lodged and Driver Will be Cautioned!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              : Text(""),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomButton(
              label: "FINISH",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
