import 'package:flutter/material.dart';
import 'package:needs_app/Routes.dart';
import 'package:needs_app/Screens/HomeScreen/homeScreen.dart';
import 'package:needs_app/components/Cartstuff.dart';
import 'package:needs_app/components/Product.dart';
import 'package:needs_app/theme.dart';
import 'package:provider/provider.dart';
// import 'Screens/splash/splashScreens.dart';

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

  void addproducts(String imagepath, double price, String title, int qty) {
    addedproduct.add(CartStuff(image: imagepath, price: price, titile: title, quantity: qty));
    notifyListeners();
  }

  void removeproduct(index) {
    addedproduct.removeAt(index);
    notifyListeners();
  }
}
