import 'package:flutter/material.dart';
import 'package:needs_app/Routes.dart';
import 'package:needs_app/Screens/HomeScreen/homeScreen.dart';
import 'package:needs_app/components/Cartstuff.dart';
import 'package:needs_app/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProducts(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Needs',
        theme: themeData(),
        initialRoute: HomeScreen.routeName,
        routes: routes,
      ),
    );
  }
}

class CartProducts extends ChangeNotifier {
  List<CartStuff> addedproduct = [];

  void addproducts(String imagepath, double price, String title, int qty, int id) {
    addedproduct.add(CartStuff(image: imagepath, price: price, title: title, quantity: qty, id: id));
    notifyListeners();
  }

  void removeproduct(index) {
    addedproduct.removeAt(index);
    notifyListeners();
  }

  void counter({int counter, int index}) {
    addedproduct[index].quantity = addedproduct[index].quantity + counter;
    notifyListeners();
  }
}
