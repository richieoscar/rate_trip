import 'package:flutter/material.dart';
import 'package:rate_trip/constants/constants.dart';
import 'package:rate_trip/util/issue_manager.dart';
import 'package:rate_trip/widgets/custom_bottom_sheet.dart';
import 'package:rate_trip/widgets/custom_button.dart';
import 'package:rate_trip/widgets/issues.dart';

class RateOrTip extends StatefulWidget {
  const RateOrTip({Key? key}) : super(key: key);

  @override
  _RateOrTipState createState() => _RateOrTipState();
}

class _RateOrTipState extends State<RateOrTip> {
  Color selected = Colors.black;
  bool isSelected = false;
  Color selected2 = Colors.black;
  bool isSelected2 = false;
  Color selected3 = Colors.black;
  bool isSelected3 = false;
  Color selected4 = Colors.black;
  bool isSelected4 = false;
  Color selected5 = Colors.black;
  bool isSelected5 = false;
  Color selected6 = Colors.black;
  bool isSelected6 = false;

  IssueManager _issueManager = IssueManager.instance;
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
              child: InputChip(
                onSelected: (value) {
                  value
                      ? _issueManager.add(generalIssues[0]!)
                      : _issueManager.remove(generalIssues[0]!);
                  setState(() {
                    isSelected = value;
                  });
                },
                selected: isSelected,
                selectedColor: selected,
                checkmarkColor: Colors.white,
                padding: const EdgeInsets.all(10),
                label: Text(generalIssues[0] ?? "No Issue",
                    style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black54)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: InputChip(
                onSelected: (value) {
                  value
                      ? _issueManager.add(generalIssues[1]!)
                      : _issueManager.remove(generalIssues[1]!);
                  setState(() {
                    isSelected2 = value;
                  });
                },
                selected: isSelected2,
                selectedColor: selected2,
                checkmarkColor: Colors.white,
                padding: const EdgeInsets.all(10),
                label: Text(generalIssues[1] ?? "No Issue",
                    style: TextStyle(
                        color: isSelected2 ? Colors.white : Colors.black54)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: InputChip(
                onSelected: (value) {
                  value
                      ? _issueManager.add(generalIssues[2]!)
                      : _issueManager.remove(generalIssues[2]!);
                  setState(() {
                    isSelected3 = value;
                  });
                },
                selected: isSelected3,
                selectedColor: selected3,
                checkmarkColor: Colors.white,
                padding: const EdgeInsets.all(10),
                label: Text(generalIssues[2] ?? "No Issue",
                    style: TextStyle(
                        color: isSelected3 ? Colors.white : Colors.black54)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: InputChip(
                onSelected: (value) {
                  value
                      ? _issueManager.add(generalIssues[3]!)
                      : _issueManager.remove(generalIssues[3]!);
                  setState(() {
                    isSelected4 = value;
                  });
                },
                selected: isSelected4,
                selectedColor: selected4,
                checkmarkColor: Colors.white,
                padding: const EdgeInsets.all(10),
                label: Text(generalIssues[3] ?? "No Issue",
                    style: TextStyle(
                        color: isSelected4 ? Colors.white : Colors.black54)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: InputChip(
                onSelected: (value) {
                  value
                      ? _issueManager.add(generalIssues[4]!)
                      : _issueManager.remove(generalIssues[4]!);
                  setState(() {
                    isSelected5 = value;
                  });
                },
                selected: isSelected5,
                selectedColor: selected5,
                checkmarkColor: Colors.white,
                padding: const EdgeInsets.all(10),
                label: Text(generalIssues[4] ?? "No Issue",
                    style: TextStyle(
                        color: isSelected5 ? Colors.white : Colors.black54)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: InputChip(
                onSelected: (value) {
                  value
                      ? _issueManager.add(generalIssues[5]!)
                      : _issueManager.remove(generalIssues[5]!);
                  setState(() {
                    isSelected6 = value;
                  });
                },
                selected: isSelected6,
                selectedColor: selected6,
                checkmarkColor: Colors.white,
                padding: const EdgeInsets.all(10),
                label: Text(generalIssues[5] ?? "No Issue",
                    style: TextStyle(
                        color: isSelected6 ? Colors.white : Colors.black54)),
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
        CustomButton(
            label: "DONE",
            onPressed: () {
              Navigator.pop(context);
              print(_issueManager.issues());
            }),
      ],
    );
  }
}
