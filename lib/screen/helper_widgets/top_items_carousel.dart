import 'package:ecommerce_ui2/data_source.dart';
import 'package:ecommerce_ui2/utiles/size_percentage.dart';
import 'package:flutter/material.dart';

class TopItemPart extends StatelessWidget {
  final Size screenSize;
  TopItemPart({Key? key, required this.screenSize}) : super(key: key);
  List<Widget> _starList = List.generate(
    5,
    (index) => Icon(
      Icons.star,
      color: Colors.yellow,
      size: 20,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          SizePercentage.percentage(totalsize: screenSize.height, percent: 45),
      width: double.infinity,
      child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listOfItems.length,
          itemBuilder: (context, index) {
            return Container(
              width: screenSize.width,
              padding: const EdgeInsets.all(8),
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: screenSize.width,
                      height: SizePercentage.percentage(
                          totalsize: screenSize.height, percent: 34),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(listOfItems[index].itemImage)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        listOfItems[index].itemName,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          ..._starList,
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "5.0 (23 Reviews )",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
