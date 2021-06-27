import 'helper_widgets/bottom_grid_list.dart';
import 'helper_widgets/heading_text.dart';
import 'helper_widgets/list_bottom_navigation_bar.dart';
import 'helper_widgets/more_catorgiers.dart';
import 'helper_widgets/top_items_carousel.dart';
import 'package:flutter/material.dart';

class EcommerceScreen extends StatelessWidget {
  const EcommerceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: 0,
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        iconSize: 35,
        showUnselectedLabels: false,
        items: bottomNavigationItems,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purpleAccent,
        elevation: 8,
        child: Icon(
          Icons.search,
          size: 35,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "E-Commerce Ui",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.notifications, color: Colors.black),
          ),
        ],
      ),
      body: ListView(
        children: [
          HeadingText(headingText: "Items", isViewMore: true),
          TopItemPart(screenSize: screenSize),
          HeadingText(headingText: "More Catogeries", isViewMore: false),
          MoreCatogeries(
            screenSize: screenSize,
          ),
          HeadingText(headingText: "Popular Items", isViewMore: true),
          BottomGridItems(),
        ],
      ),
    );
  }
}
