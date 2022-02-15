import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CustomBottomSheet {
  
  static showBottomSheet(BuildContext context, Widget displayWidget) {
    showModalBottomSheet(
      isDismissible: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
        context: context,
        builder: (context) {
          return Container(
            child: SingleChildScrollView(child: displayWidget),
          );
        });
  }
}
