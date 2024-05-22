// this is basically hold what every order is supposed to have

class Order {
  final String name;
  final String price;
  // imagePath, this are default assets stored in the app that can be used by
  // the user to develop icons to personalise their laundry order , for better  search
  final String imagePath;
  final String status;

  Order(
      {required this.name,
      required this.price,
      required this.imagePath,
      required this.status});
}
