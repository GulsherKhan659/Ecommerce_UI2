import 'model/catogery_modal.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'model/item_modal.dart';

List<ItemModel> listOfItems = [
  ItemModel(itemName: "MacBook Pro", itemImage: "assets/1.jpg"),
  ItemModel(itemName: "RONIN Headphone", itemImage: "assets/2.jpg"),
  ItemModel(itemName: "Nikon DX45", itemImage: "assets/3.png"),
  ItemModel(itemName: "Iphone 11 Pro Max", itemImage: "assets/4.jpg"),
  ItemModel(itemName: "Nike Classic", itemImage: "assets/5.jpg"),
  ItemModel(itemName: "Electric Cycle", itemImage: "assets/6.jpg"),
  ItemModel(itemName: "Radeon HD 5970", itemImage: "assets/7.jpg"),
  ItemModel(itemName: "Huawie Y9", itemImage: "assets/8.jpg"),
  ItemModel(itemName: "Puma S74", itemImage: "assets/9.jpg"),
  ItemModel(itemName: "Gaming Consoles", itemImage: "assets/10.jpg"),
  ItemModel(itemName: "G-Tech Mouse", itemImage: "assets/11.jpg"),
  ItemModel(itemName: "A4Tech Keyboard", itemImage: "assets/12.jpg"),
];

List<Catogery> listOfCatogery = [
  Catogery(title: "Clothes", itemCount: 5, icon: FontAwesomeIcons.tshirt),
  Catogery(title: "Electronic", itemCount: 20, icon: FontAwesomeIcons.bolt),
  Catogery(title: "Households", itemCount: 7, icon: FontAwesomeIcons.chair),
  Catogery(
      title: "Appliances", itemCount: 15, icon: FontAwesomeIcons.blenderPhone),
  Catogery(
      title: "Others", itemCount: 25, icon: FontAwesomeIcons.angleDoubleRight),
];
