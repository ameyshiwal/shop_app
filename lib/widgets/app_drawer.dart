import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/orders_screen.dart';
import 'package:flutter_complete_guide/screens/products_overview_screen.dart';
import 'package:flutter_complete_guide/screens/user_products_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Hello Friend!!'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text(
              'Shop',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(ProductsOverviewScreen.routename);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Orders',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Manage Products',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(UserProductsScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
