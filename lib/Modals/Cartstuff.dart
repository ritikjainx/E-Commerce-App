// This class defines the structure for items that are added to the cart

class CartStuff {
  final String image;
  final String title;
  final double price;
  int quantity;
  final int id;

  CartStuff({this.id, this.quantity, this.image, this.title, this.price});
}
