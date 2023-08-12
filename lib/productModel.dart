class Product {
  int id;
  String title;
  String image;
  String description;
  double price;
  int quantity;

  double priceTotal;

  Product(
      {required this.id,
      required this.title,
      required this.image,
      required this.description,
      required this.price,
      required this.priceTotal,
      required this.quantity});
}

List<Product> products = [];

List<Product> productsLeft = [
  Product(
    id: 1,
    title: 'Apple Pie',
    image: 'images/item1.png',
    description: 'some text',
    price: 4.50,
    priceTotal: 4.50,
    quantity: 1,
  ),
  Product(
    id: 2,
    title: 'Apple cheesecake',
    image: 'images/item2.png',
    description: 'some text',
    price: 5.0,
    priceTotal: 5.0,
    quantity: 1,
  ),
  Product(
    id: 3,
    title: 'Blueberry cheesecake',
    image: 'images/item3.png',
    description: 'some text',
    price: 2.50,
    priceTotal: 2.50,
    quantity: 1,
  ),
  Product(
    id: 4,
    title: 'Strawberry cheesecake',
    image: 'images/item4.png',
    description: 'some text',
    price: 3.50,
    priceTotal: 3.50,
    quantity: 1,
  ),
];
