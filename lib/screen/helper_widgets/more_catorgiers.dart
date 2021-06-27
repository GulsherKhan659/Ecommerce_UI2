import 'package:ecommerce_ui2/data_source.dart';
import 'package:ecommerce_ui2/utiles/size_percentage.dart';
import 'package:flutter/material.dart';

class MoreCatogeries extends StatelessWidget {
  final Size screenSize;
  MoreCatogeries({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          SizePercentage.percentage(totalsize: screenSize.height, percent: 10),
      //width: screenSize.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: listOfCatogery.map((element) {
          return Container(
            width: screenSize.width / 1.7,
            child: Card(
              child: ListTile(
                leading: Icon(
                  element.icon,
                  size: 35,
                  color: Colors.purpleAccent,
                ),
                title: Text(element.title),
                subtitle: Text("${element.itemCount.toString()} Items"),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
