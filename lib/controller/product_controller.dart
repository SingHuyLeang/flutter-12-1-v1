import '../model/product_model.dart';

class ProductController {
  List<Product> products = [
    Product(
      id: 1,
      name: "Expresso",
      sizes: ["S","M","L"],
      price: [1.90, 2.90, 3.15],
      image: "assets\expresso.jpg",
    ),
    Product(
      id: 2,
      name: "Caramel Frappucino",
      sizes: ["S","M","L"],
      price: [2.90, 3.10, 3.75],
      image: "assets/Caramel Frappucino.jpg",
    ),
    Product(
      id: 3,
      name: "Frape Chocolate",
      sizes: ["S","M","L"],
      price: [2.80, 3.00, 3.50],
      image: "assets\Frape Chocolate.png",
    ),
    Product(
      id: 4,
      name: "Ice Coffee",
      sizes: ["S","M","L"],
      price: [2.70, 3.00, 3.40],
      image: "assets\Ice Coffee.jpg",
    ),
    Product(
      id: 5,
      name: "Mixed Black Coffee",
      sizes: ["S","M","L"],
      price: [3.50, 4.00, 4.50],
      image: "assets\Mixed Black Coffee.jpg",
    ),
  ];
}
