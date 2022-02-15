import 'package:flutter/material.dart';
import 'package:rate_trip/constants/chips.dart';
import 'package:rate_trip/widgets/custom_button.dart';

class AddTip extends StatefulWidget {
  const AddTip({Key? key}) : super(key: key);

  @override
  _AddTipState createState() => _AddTipState();
}

class _AddTipState extends State<AddTip> {
  bool _is100 = false;
  bool _is200 = false;
  bool _is500 = false;
  bool _is1000 = false;
  Color _color100 = Colors.black;
  Color _color200 = Colors.black;
  Color _color500 = Colors.black;
  Color _color1000 = Colors.black;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            const Text("Add Tip",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            const Divider(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InputChip(
                  avatar: Icon(Icons.check),
                  onSelected: (value) {
                    setState(() {
                      _is100 = value;
                    });
                  },
                  selected: _is100,
                  selectedColor: _color100,
                  label: Text("100",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                InputChip(
                  avatar: Icon(Icons.check),
                  onSelected: (value) {
                    setState(() {
                      _is200 = value;
                    });
                  },
                  selected: _is200,
                  selectedColor: _color200,
                  label: Text("200",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                InputChip(
                   avatar: Icon(Icons.check),
                  onSelected: (value) {
                    setState(() {
                      _is500 = value;
                    });
                  },
                  selected: _is500,
                  selectedColor: _color500,
                  label: Text("500", style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                InputChip(
                   avatar: Icon(Icons.check),
                  onSelected: (value) {
                    setState(() {
                      _is1000 = value;
                    });
                  },
                  selected: _is1000,
                  selectedColor: _color1000,
                  label: Text("1000", style: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            const Divider(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text("Payment Type",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                      child: MaterialButton(
                          onPressed: () {},
                          child: Text("Card"),
                          elevation: 10,
                          color: Colors.white)),
                  Expanded(
                      child: MaterialButton(
                    onPressed: () {},
                    child: Text("Cash"),
                    elevation: 10,
                    color: Colors.red,
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                width: double.infinity,
                child: MaterialButton(
                  padding: EdgeInsets.all(20),
                  onPressed: () {},
                  child: Text("DONE", style: TextStyle(color: Colors.black)),
                  elevation: 10,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
