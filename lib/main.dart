import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingListScreen(),
    );
  }
}

class ShoppingListScreen extends StatelessWidget {
  final List<ShoppingItem> shoppingItems = [
    ShoppingItem(icon: Icons.shopping_bag_rounded, name: 'Milk'),
    ShoppingItem(icon: Icons.add_box_rounded, name: 'Bread'),
    ShoppingItem(icon: Icons.shopping_cart, name: 'Eggs'),
    ShoppingItem(icon: Icons.apple, name: 'Apples'),
    ShoppingItem(icon: Icons.content_paste_off, name: 'Toothpaste'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 70.0,
        title: Text(
          "My Shopping List",
          style: TextStyle(
            color: Colors.white,
          ),

        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(shoppingItems[index].icon),
            title: Text(shoppingItems[index].name),
            onTap: () {
              // Add item selection or navigation here
            },
          );
        },
      ),
    );
  }
}

class ShoppingItem {
  final IconData icon;
  final String name;

  ShoppingItem({required this.icon, required this.name});
}
