import 'package:ecommerce_ui2/data_source.dart';

import 'package:flutter/material.dart';

class BottomGridItems extends StatelessWidget {
  BottomGridItems({Key? key}) : super(key: key);
  List<Widget> _starList = List.generate(
    5,
    (index) => Icon(
      Icons.star,
      color: Colors.yellow,
      size: 12,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1080,
      width: double.infinity,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        children: listOfItems.map((item) {
          return Container(
            height: 80,
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(item.itemImage))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
                    child: Text(
                      item.itemName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      ..._starList,
                      Text(
                        " 5.0 (23 Reviews)",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
