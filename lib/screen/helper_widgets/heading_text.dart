import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String headingText;
  final bool isViewMore;
  HeadingText({Key? key, required this.headingText, required this.isViewMore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            headingText,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          isViewMore
              ? Text("View more",
                  style: TextStyle(color: Colors.purpleAccent.shade700))
              : Text(""),
        ],
      ),
    );
  }
}
