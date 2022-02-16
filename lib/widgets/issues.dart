import 'package:flutter/material.dart';
import 'package:rate_trip/constants/chips.dart';
import 'package:rate_trip/constants/constants.dart';
import 'package:rate_trip/util/issue_manager.dart';
import 'package:rate_trip/widgets/custom_button.dart';
import 'package:rate_trip/widgets/issue_item.dart';
import 'package:rate_trip/widgets/submit_button.dart';

class Issues extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close,
                      size: 30,
                    )),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "More Driver and Trip Issues",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          IssueItem(
              icon: Icons.dangerous,
              title: issueHeading[0],
              values: drivingIssues),
          IssueItem(
              icon: Icons.drive_eta_outlined,
              title: issueHeading[1],
              values: vehicleIssues),
          IssueItem(
              icon: Icons.personal_injury_sharp,
              title: issueHeading[2],
              values: behaviorIssues),
          IssueItem(
              icon: Icons.navigation,
              title: issueHeading[3],
              values: navigationIssues),
          IssueItem(
              icon: Icons.pin_drop,
              title: issueHeading[4],
              values: pickupIssues),
          IssueItem(
              icon: Icons.payment,
              title: issueHeading[5],
              values: paymentIssues),
          IssueItem(
              icon: Icons.health_and_safety,
              title: issueHeading[6],
              values: healthHygeineIssues),
        ],
      ),
    );
  }

  _done() {
    print("Done");
  }
}
