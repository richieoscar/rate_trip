import 'package:flutter/material.dart';
import 'package:rate_trip/constants/constants.dart';
import 'package:rate_trip/widgets/custom_bottom_sheet.dart';
import 'package:rate_trip/widgets/issues.dart';

class RateOrTip extends StatefulWidget {
  const RateOrTip({Key? key}) : super(key: key);

  @override
  _RateOrTipState createState() => _RateOrTipState();
}

class _RateOrTipState extends State<RateOrTip> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "Rate or Tip",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const Divider(
          height: 10,
          color: Colors.grey,
        ),
        const SizedBox(
          height: 20,
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            "Choose Up to Five Issue",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Chip(
                padding: const EdgeInsets.all(10),
                label: Text(generalIssues[0] ?? "No Issue"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Chip(
                padding: const EdgeInsets.all(10),
                label: Text(generalIssues[1] ?? "No Issue"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Chip(
                padding: const EdgeInsets.all(10),
                label: Text(generalIssues[2] ?? "No Issue"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Chip(
                padding: const EdgeInsets.all(10),
                label: Text(generalIssues[3] ?? "No Issue"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Chip(
                padding: const EdgeInsets.all(10),
                label: Text(generalIssues[4] ?? "No Issue"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Chip(
                padding: const EdgeInsets.all(10),
                label: Text(generalIssues[5] ?? "No Issue"),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    CustomBottomSheet.showBottomSheet(context, Issues());
                  },
                  child: const Text("More issues",
                      style: TextStyle(color: Colors.grey))),
              const Icon(
                Icons.arrow_forward_ios_sharp,
                size: 15,
              )
            ],
          ),
        ),
      ],
    );
  }
}
